//
//  Beverage.swift
//  CoffeeShop
//
//  Created by Nguyen Truong Duy Khang on 12/15/21.
//

import Foundation

class BeverageStore: ObservableObject {
    @Published var orderList = [Order]()
    
    func addToList(beverageList: [Beverage]) {
        orderList.append(Order(beverageList: beverageList, date: Date()))
    }
}
    
struct Order: Identifiable,Hashable {
    var id: UUID
    var beverageList: [Beverage]
    var date: Date
    
    init(id: UUID = UUID(), beverageList: [Beverage], date: Date) {
        self.id = id
        self.beverageList = beverageList
        self.date = date
    }
    
}

struct Beverage: Hashable {
    var name: String
    var image: String
    var size: String
    
    init(Name:String, Image:String,Size:String) {
        self.name = Name
        self.image = Image
        self.size = Size
    }
}
