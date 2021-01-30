//
//  AppetizerListView.swift
//  Appetizer
//
//  Created by Oscar Santos on 11/13/20.
//

import SwiftUI

struct AppetizerListView: View {
    
    @State var appetizers: [Appetizer] = []
    
    var body: some View {
        NavigationView{
            List(appetizers){ appetizer in
                AppetizerListCell(appetizer: appetizer)
            }
            .navigationTitle("🍔 Appetizer")
        }
        .onAppear(){
            getAppetizers()
        }
    }
    
    func getAppetizers(){
        NetworkManager.shared.getAppetizers { result in
            DispatchQueue.main.async {
                switch result{
                case .success(let appetizers):
                    self.appetizers = appetizers
                case .failure(let error):
                    print(error.localizedDescription)
                }
            }
            
        }
    }
}

struct AppetizerListView_Previews: PreviewProvider {
    static var previews: some View {
        AppetizerListView()
    }
}
