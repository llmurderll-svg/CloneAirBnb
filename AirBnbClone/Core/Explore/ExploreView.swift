//
//  ExploreView.swift
//  AirBnbClone
//
//  Created by Gustavo Rafael La Madrid Coz on 24/06/26.
//

import SwiftUI

struct ExploreView: View {
    
    @State var showSearchView: Bool = false
    
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
                        ForEach(0...5, id: \.self){ listItem in
                            NavigationLink(value: listItem){
                                ListItemsView()
                                    .frame(height: 400)
                                    .clipShape(
                                        RoundedRectangle(cornerRadius: 10)
                                    )
                            }
                        }
                    }
                    .padding()
                }
                .navigationDestination(for: Int.self){ listItem in
                    ListDetailView()
                        .navigationBarBackButtonHidden()
                }
            }
        }
    }
}

#Preview {
    ExploreView()
}
