//
//  ExploreViewModel.swift
//  AirBnbClone
//
//  Created by Gustavo Rafael La Madrid Coz on 28/06/26.
//

import Foundation

@Observable
class ExploreViewModel {
    
    var listings = [Listing]()
    private let service : ExploreService
    
    init(service : ExploreService){
        self.service = service
        Task{await fetchListings()}
    }
    
    func fetchListings() async{
        do{
            self.listings = try await service.fetchListings()
        }
        catch{
            print("DEBUG: Failed to fetch listings with error: \(error.localizedDescription)")
        }
    }
}
