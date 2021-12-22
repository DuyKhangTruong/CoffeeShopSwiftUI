//
//  PlaceOrderView.swift
//  CoffeeShop
//
//  Created by Nguyen Truong Duy Khang on 12/19/21.
//

import SwiftUI
import Foundation
struct PlaceOrderView: View {
    //var orderList: [String: String] = ["Espresso":"Large","Latte":"Medium","Smoothies":"Small"]
    var store: BeverageStore
    @State private var newList = [Beverage]()
    @State var menuShown = false
    @State var submitTapped = false
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        VStack(alignment: .center, spacing: 90, content: {
            VStack(alignment: .center, spacing: 10, content: {
                Text("Order For")
                Text(Date(), style: .date)
            })
            VStack(alignment: .center, spacing: 10, content: {
                ForEach(newList, id: \.self) { order in
                    Text("\(order.name): \(order.size)")
                }
            })
            Button("Add Item") {
                menuShown.toggle()
            }
            .sheet(isPresented: $menuShown, content: {
//                MenuView(newList: $newList)
                MenuView(newList: $newList, menuShown: $menuShown)
            })
            
            Button("Submit Order") {
                submitTapped.toggle()
                if (!newList.isEmpty) {
                    store.addToList(beverageList: newList)
                    newList = [Beverage]()
                }
            }
            .frame(width:190,height:40)
            .foregroundColor(.white)
            .background(Color.blue)
            .cornerRadius(9)
            .alert(isPresented: $submitTapped, content: {
                Alert(title: Text("Order Complete"),
                      message: Text("Thank you for shopping with us."),
                      dismissButton: .default(Text("OK")) {
                    self.presentationMode.wrappedValue.dismiss()
                })
                
            })
            
        })
        
    }
}

struct PlaceOrderView_Previews: PreviewProvider {
    static var previews: some View {
        PlaceOrderView(store: BeverageStore())
    }
}
