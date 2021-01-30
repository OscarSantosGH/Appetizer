//
//  AppetizerListView.swift
//  Appetizer
//
//  Created by Oscar Santos on 11/13/20.
//

import SwiftUI

struct AppetizerListView: View {
    
    @StateObject var viewModel = AppetizersListViewModel()
    
    var body: some View {
        NavigationView{
            List(viewModel.appetizers){ appetizer in
                AppetizerListCell(appetizer: appetizer)
            }
            .navigationTitle("🍔 Appetizer")
        }
        .onAppear(){
            viewModel.getAppetizers()
        }
    }
    
}

struct AppetizerListView_Previews: PreviewProvider {
    static var previews: some View {
        AppetizerListView()
    }
}
