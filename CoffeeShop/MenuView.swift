//
//  MenuView.swift
//  CoffeeShop
//
//  Created by Nguyen Truong Duy Khang on 12/14/21.
//

import SwiftUI

struct MenuView: View {
    var espressoObj = Beverage(Name: "Espresso", Image: "Espresso", Size: "Venti")
    var waterObj = Beverage(Name: "Water", Image: "Water", Size: "Tall")
    var smoothiesoObj = Beverage(Name: "Smoothies", Image: "Smoothies", Size: "Grande")
    var latteoObj = Beverage(Name: "Latte", Image: "Latte", Size: "Venti")
    var teaoObj = Beverage(Name: "Tea", Image: "Tea", Size: "Tall")
    @Binding var newList: [Beverage]
    @Binding var menuShown: Bool
    
    var body: some View {
        VStack(alignment: .leading, spacing: 30, content: {
            HStack(alignment: .center, spacing: 40, content: {
                Button(action: {
                    ProcessOrder(chosen: espressoObj)
                    menuShown.toggle()
                }, label: {
                    CardBeverageView(imageName: espressoObj.image, beverageName: espressoObj.name)
                    
                })
                Button(action: {
                    ProcessOrder(chosen: waterObj)
                    menuShown.toggle()
                }, label: {
                    CardBeverageView(imageName: waterObj.image, beverageName: waterObj.name)
                    
                })
            })
            HStack(alignment: .center, spacing: 40, content: {
                Button(action: {
                    ProcessOrder(chosen: latteoObj)
                    menuShown.toggle()
                }, label: {
                    CardBeverageView(imageName: latteoObj.image, beverageName: latteoObj.name)
                    
                })
                Button(action: {
                    ProcessOrder(chosen: smoothiesoObj)
                    menuShown.toggle()
                }, label: {
                    CardBeverageView(imageName: smoothiesoObj.image, beverageName: smoothiesoObj.name)
                    
                })
            })
            Button(action: {
                ProcessOrder(chosen: teaoObj)
                menuShown.toggle()
            }, label: {
                CardBeverageView(imageName: teaoObj.image, beverageName: teaoObj.name)
            })
            
        })
        
    }
    func ProcessOrder(chosen: Beverage) {
        newList.append(chosen)
    }
}

//struct MenuView_Previews: PreviewProvider {
//    static var previews: some View {
//        MenuView(newList: Beverage())
//    }
//}
