//
//  ExploreService.swift
//  AirBnbClone
//
//  Created by Gustavo Rafael La Madrid Coz on 28/06/26.
//

class ExploreService {
    
    func fetchListings() async throws -> [Listing]{
        return DeveloperPreview.shared.listings
    }
}
