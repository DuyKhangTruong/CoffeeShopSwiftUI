//
//  CoffeeShopApp.swift
//  CoffeeShop
//
//  Created by Nguyen Truong Duy Khang on 12/14/21.
//

import SwiftUI

@main
struct CoffeeShopApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            HomeView()
                //.environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
