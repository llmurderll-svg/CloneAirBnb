//
//  ListImageCarouselView.swift
//  AirBnbClone
//
//  Created by Gustavo Rafael La Madrid Coz on 26/06/26.
//

import SwiftUI

struct ListImageCarouselView: View {
    
    let images = [
        "imageReference-1",
        "imageReference-2",
        "imageReference-3",
        "imageReference-4",
    ]
    
    var body: some View {
        TabView{
            ForEach(images, id: \.self){ image in
                Image(image)
                    .resizable()
                    .scaledToFill()
            }
        }
        .tabViewStyle(.page)
    }
}

#Preview {
    ListImageCarouselView()
}
