//
//  AppetizerListView.swift
//  Appetizer
//
//  Created by Oscar Santos on 11/13/20.
//

import SwiftUI

struct AppetizerListView: View {
    var body: some View {
        NavigationView{
            List(MockData.appetizers){ appetizer in
                AppetizerListCell(appetizer: appetizer)
            }
            .navigationTitle("🍔 Appetizer")
        }
    }
}

struct AppetizerListView_Previews: PreviewProvider {
    static var previews: some View {
        AppetizerListView()
    }
}
