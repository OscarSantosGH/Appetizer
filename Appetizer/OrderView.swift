//
//  OrderView.swift
//  Appetizer
//
//  Created by Oscar Santos on 11/13/20.
//

import SwiftUI

struct OrderView: View {
    var body: some View {
        NavigationView{
            Text("Order View")
                .navigationTitle("🧾 Order")
        }
    }
}

struct OrderView_Previews: PreviewProvider {
    static var previews: some View {
        OrderView()
    }
}
