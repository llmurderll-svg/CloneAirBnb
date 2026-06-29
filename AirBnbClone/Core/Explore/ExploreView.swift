//
//  ExploreView.swift
//  AirBnbClone
//
//  Created by Gustavo Rafael La Madrid Coz on 24/06/26.
//

import SwiftUI

struct ExploreView: View {
    
    @State var showSearchView: Bool = false
    var viewModel = ExploreViewModel(service: ExploreService())
    
    var body: some View {
        NavigationStack{
            if showSearchView{
                DestinationSearchView(show: $showSearchView)
            }
            else{
                ScrollView{
                    SearchAndFilterBar()
                        .onTapGesture {
                            withAnimation(.snappy){
                                showSearchView.toggle()
                            }
                        }
                    LazyVStack(spacing: 32){
                        ForEach(viewModel.listings){ listItem in
                            NavigationLink(value: listItem){
                                ListItemsView(listing: listItem)
                                    .frame(height: 400)
                                    .clipShape(
                                        RoundedRectangle(cornerRadius: 10)
                                    )
                            }
                        }
                    }
                    .padding()
                }
                .navigationDestination(for: Listing.self){ listItem in
                    ListDetailView(listing: listItem)
                        .navigationBarBackButtonHidden()
                }
            }
        }
    }
}

#Preview {
    ExploreView()
}
