//
//  ContentView.swift
//  CoffeeShop
//
//  Created by Nguyen Truong Duy Khang on 12/14/21.
//

import SwiftUI
import CoreData

struct HomeView: View {
    //@State var showModalView: Bool = false
    
    @State private var placeOrderShown = false
    @State private var HistoryShown = false
    @StateObject var store = BeverageStore()
    
    //    @Environment(\.managedObjectContext) private var viewContext
    //
    //    @FetchRequest(
    //        sortDescriptors: [NSSortDescriptor(keyPath: \Item.timestamp, ascending: true)],
    //        animation: .default)
    //    private var items: FetchedResults<Item>
    
    var body: some View {
        //        List {
        //            ForEach(items) { item in
        //                Text("Item at \(item.timestamp!, formatter: itemFormatter)")
        //            }
        //            .onDelete(perform: deleteItems)
        //        }
        //        .toolbar {
        //            #if os(iOS)
        //            EditButton()
        //            #endif
        //
        //            Button(action: addItem) {
        //                Label("Add Item", systemImage: "plus")
        //            }
        //        }
        NavigationView {
            VStack(alignment: .center, spacing: 30, content: {
                Text("Swift Intro")
                    .bold()
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                Text("Coffee Shop")
                Image("HomeViewImage")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 400, height: 200, alignment: .center)
                    .clipShape(Circle())
                    .shadow(radius: 10)
                
                NavigationLink(
                    destination: PlaceOrderView(store: store),
                    isActive: $placeOrderShown,
                    label: {
                        Button(action: {
                            placeOrderShown.toggle()
                        }, label: {
                            Text("Place Order")
                        })
                        .frame(width:190,height:40)
                        .foregroundColor(.white)
                        .background(Color.blue)
                        .cornerRadius(9)
                    })
                    
                NavigationLink(
                    destination: HistoryView(orders: store.orderList),
                    isActive: $HistoryShown,
                    label: {
                        Button(action: {HistoryShown.toggle()}, label: {
                            Text("View Order History")
                        })
                    })
            })
        }
        
        
    }
    
    //    private func addItem() {
    //        withAnimation {
    //            let newItem = Item(context: viewContext)
    //            newItem.timestamp = Date()
    //
    //            do {
    //                try viewContext.save()
    //            } catch {
    //                // Replace this implementation with code to handle the error appropriately.
    //                // fatalError() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
    //                let nsError = error as NSError
    //                fatalError("Unresolved error \(nsError), \(nsError.userInfo)")
    //            }
    //        }
    //    }
    
    //    private func deleteItems(offsets: IndexSet) {
    //        withAnimation {
    //            offsets.map { items[$0] }.forEach(viewContext.delete)
    //
    //            do {
    //                try viewContext.save()
    //            } catch {
    //                // Replace this implementation with code to handle the error appropriately.
    //                // fatalError() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
    //                let nsError = error as NSError
    //                fatalError("Unresolved error \(nsError), \(nsError.userInfo)")
    //            }
    //        }
    //    }
}

//private let itemFormatter: DateFormatter = {
//    let formatter = DateFormatter()
//    formatter.dateStyle = .short
//    formatter.timeStyle = .medium
//    return formatter
//}()

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        //        ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
        HomeView()
    }
}
