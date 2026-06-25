//
//  ListItemsView.swift
//  AirBnbClone
//
//  Created by Gustavo Rafael La Madrid Coz on 24/06/26.
//

import SwiftUI

struct ListItemsView: View {
    
    let images = [
        "imageReference-1",
        "imageReference-2",
        "imageReference-3",
        "imageReference-4",
    ]
    
    var body: some View {
        VStack(spacing:8){
            TabView{
                ForEach(images, id: \.self){ image in
                    Image(image)
                        .resizable()
                        .scaledToFill()
                }
            }
            .frame(height: 320)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .tabViewStyle(.page)
            
            HStack{
                VStack(alignment: .leading){
                    Text("Miami, Florida")
                        .fontWeight(.semibold)
                    Text("12 MI Way")
                        .foregroundStyle(.gray)
                    Text("Nov 3 - 10")
                        .foregroundStyle(.gray)
                    HStack{
                        Text("$567")
                            .fontWeight(.semibold)
                        Text("night")
                    }
                }
                
                Spacer()
                
                HStack(spacing: 2){
                    Image(systemName: "star.fill")
                    Text("4.86")
                }
            }
            .font(.footnote)
        }
    }
}

#Preview {
    ListItemsView()
}
