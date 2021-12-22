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
            
            VStack(alignment: .center, spacing: 5, content: {
                Text("Order For")
                    .foregroundColor(.black)
                Text(Date(), style: .date)
                VStack(alignment: .leading, spacing: 10) {
                    ForEach(list, id: \.self) { order in
                        HStack(alignment:.center,spacing: 15, content: {
                            Image(order.image)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 100, height: 50, alignment: .center)
                                .clipShape(Circle())
                                .shadow(radius: 5)
                            Text("\(order.name): \(order.size)")
                        })
                            .padding(10)
                    }
                }
                .padding(10)
                
            })
                .padding(20)
                .multilineTextAlignment(.center)
            
        }
        
    }
}

//struct CardHistoryView_Previews: PreviewProvider {
//    static var previews: some View {
//        CardHistoryView()
//    }
//}
