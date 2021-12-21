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
            CardHistoryView(list: order.beverageList)
        }
        .environment(\.defaultMinListRowHeight, 100)
        //.frame(alignment: .center)
        
    }
}

struct HistoryView_Previews: PreviewProvider {
    static var previews: some View {
        HistoryView(orders: [Order]())
    }
}
