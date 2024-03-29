//
//  HistoryView.swift
//  CoffeeShop
//
//  Created by Nguyen Truong Duy Khang on 12/14/21.
//

import SwiftUI

struct HistoryView: View {
    let orders: [Order]
    var body: some View {
        List(orders) { order in
            VStack{
                Spacer()
                CardHistoryView(list: order.beverageList)
                Spacer()
            }
        }
        .environment(\.defaultMinListRowHeight, 150)
        

//        List {
//            VStack {
//                ForEach(orders, id: \.self) { order in
//                    CardHistoryView(list: order.beverageList)
//                }
//            }
//        }
       
        //.frame(alignment: .center)
        
    }
}

struct HistoryView_Previews: PreviewProvider {
    static var previews: some View {
        HistoryView(orders: [Order]())
    }
}
