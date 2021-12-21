//
//  CardBeverageView.swift
//  CoffeeShop
//
//  Created by Nguyen Truong Duy Khang on 12/15/21.
//

import SwiftUI

struct CardBeverageView: View {
    var imageName: String
    var beverageName: String
    var body: some View {
        VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 10, content: {
            Image(imageName)
                .resizable()
                .scaledToFit()
                .frame(width: 150, height: 100, alignment: .center)
                .clipShape(Circle())
                .shadow(radius: 5)
            Text(beverageName)
                .foregroundColor(.black)
                .bold()
        })
        
        .frame(width: 160.0, height: 190.0)
        .background(Color.gray)
        .clipShape(RoundedRectangle(cornerRadius: 25.0, style: .continuous))
    }
}

//struct CardBeverageView_Previews: PreviewProvider {
//    static var previews: some View {
//        CardBeverageView()
//    }
//}
