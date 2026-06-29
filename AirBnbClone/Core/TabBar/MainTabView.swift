//
//  TabBarView.swift
//  AirBnbClone
//
//  Created by Gustavo Rafael La Madrid Coz on 24/06/26.
//

import SwiftUI

struct MainTabView: View {
    
    var body: some View {
        TabView{
            ExploreView()
                .tabItem {
                    Label("Explore", systemImage: "magnifyingglass")
                }
            WhishListView()
                .tabItem {
                    Label("Whishlists", systemImage: "heart")
                }
            ProfileView()
                .tabItem {
                    Label("Profile", systemImage: "person")
                }
        }
    }
}

#Preview {
    MainTabView()
}
