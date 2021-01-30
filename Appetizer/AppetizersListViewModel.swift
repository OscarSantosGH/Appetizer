//
//  AppetizersListViewModel.swift
//  Appetizer
//
//  Created by Oscar Santos on 1/30/21.
//

import SwiftUI

final class AppetizersListViewModel: ObservableObject {
    
    @Published var appetizers: [Appetizer] = []
    
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
