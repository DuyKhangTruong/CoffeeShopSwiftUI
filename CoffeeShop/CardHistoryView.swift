//
//  CardHistoryView.swift
//  CoffeeShop
//
//  Created by Nguyen Truong Duy Khang on 12/19/21.
//

import SwiftUI

struct CardHistoryView: View {
    var list: [Beverage]
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 25, style: .continuous)
                .fill(Color.white)
                .shadow(radius: 10)
            
            VStack {
                Text("Order For")
                    .foregroundColor(.black)
                
                Text(Date(), style: .date)
                    .foregroundColor(.black)
                VStack(alignment: .center, spacing: 5, content: {
                    ForEach(list, id: \.self) { order in
                        HStack(alignment: .center, spacing: 17, content: {
                            Image(order.image)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 100, height: 50, alignment: .center)
                                .clipShape(Circle())
                                .shadow(radius: 3)
                            Text("\(order.name): \(order.size)")
                        })
                        .frame(width: 300, height: 50, alignment: .leading)
                        .padding(15)
                    }
                    
                })
            }
            .padding(20)
            .multilineTextAlignment(.center)
        }
        //.frame(width:350, height: 150)
        .frame(minWidth: 0, idealWidth: 350, maxWidth: .infinity, minHeight: 0, idealHeight: 150, maxHeight: .infinity, alignment: .center)
        .padding(.vertical, 1.0)
    }
}

//struct CardHistoryView_Previews: PreviewProvider {
//    static var previews: some View {
//        CardHistoryView()
//    }
//}
