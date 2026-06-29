//
//  ListImageCarouselView.swift
//  AirBnbClone
//
//  Created by Gustavo Rafael La Madrid Coz on 26/06/26.
//

import SwiftUI

struct ListImageCarouselView: View {
    
    let listing : Listing
    
    var body: some View {
        TabView{
            ForEach(listing.imageUrl, id: \.self){ image in
                Image(image)
                    .resizable()
                    .scaledToFill()
            }
        }
        .tabViewStyle(.page)
    }
}

#Preview {
    ListImageCarouselView(listing: DeveloperPreview.shared.listings[0])
}
