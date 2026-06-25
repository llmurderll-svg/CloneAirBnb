//
//  ExploreView.swift
//  AirBnbClone
//
//  Created by Gustavo Rafael La Madrid Coz on 24/06/26.
//

import SwiftUI

struct ExploreView: View {
    var body: some View {
        NavigationStack{
            ScrollView{
                LazyVStack(spacing: 32){
                    ForEach(0...5, id: \.self){ listItem in
                        ListItemsView()
                            .frame(height: 400)
                            .clipShape(
                                RoundedRectangle(cornerRadius: 10)
                            )
                    }
                }
                .padding()
            }
        }
    }
}

#Preview {
    ExploreView()
}
