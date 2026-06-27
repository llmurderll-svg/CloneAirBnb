//
//  DestinationSearchView.swift
//  AirBnbClone
//
//  Created by Gustavo Rafael La Madrid Coz on 26/06/26.
//

import SwiftUI

enum DestinationSearchOptions{
    case location
    case dates
    case guests
}

struct DestinationSearchView: View {
    @Binding var show : Bool
    @State private var destination: String = ""
    @State private var selectedOption: DestinationSearchOptions = .location
    var body: some View {
        VStack {
            Button(
                action: {
                    withAnimation(.snappy){
                        show.toggle()
                    }
                }, label: {
                    Image(systemName: "xmark.circle")
                        .imageScale(.large)
                        .foregroundStyle(.black)
                }
            )
            VStack(alignment: .leading){
                if selectedOption == .location {
                    Text("Where to?")
                        .font(.title2)
                        .fontWeight(.semibold)
                    HStack{
                        Image(systemName: "magnifyingglass")
                            .imageScale(.small)
                        TextField(
                            "Search Destinations",
                            text: $destination
                        )
                        .font(.subheadline)
                    }
                    .frame(height: 44)
                    .padding(.horizontal)
                    .overlay{
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(lineWidth: 1.0)
                            .foregroundStyle(.gray)
                        
                    }
                }
                else {
                    CollapsePickerView(title: "Where", description:"Add Destination")
                }
            }
            .padding()
            .frame(height: selectedOption == .location ? 120 :64)
            .background(.white)
            .clipShape(RoundedRectangle(cornerRadius: 12))
            .padding()
            .shadow(radius: 10)
            .onTapGesture {
                withAnimation(.snappy){
                    selectedOption = .location
                }
            }
            
            VStack{
                if selectedOption == .dates {
                    HStack{
                        Text("Show Date Picker")
                        Spacer()
                    }
                } else{
                    CollapsePickerView(title: "When", description:"Add Dates")
                }
            }.onTapGesture {
                withAnimation(.snappy){
                    selectedOption = .dates
                }
            }
            .padding()
            .frame(height: selectedOption == .dates ? 120 :64)
            .background(.white)
            .clipShape(RoundedRectangle(cornerRadius: 12))
            .padding()
            .shadow(radius: 10)
            
            VStack{
                if selectedOption == .guests {
                    HStack{
                        Text("Show Guests Picker")
                        Spacer()
                    }
                } else{
                    CollapsePickerView(title: "Who", description:"Add Guests")
                }
            }.onTapGesture {
                withAnimation(.snappy){
                    selectedOption = .guests
                }
            }
            .padding()
            .frame(height: selectedOption == .guests ? 120 :64)
            .background(.white)
            .clipShape(RoundedRectangle(cornerRadius: 12))
            .padding()
            .shadow(radius: 10)
        }
    }
}

#Preview {
    DestinationSearchView(show: .constant(false))
}

struct CollapsePickerView: View {
    let title : String
    let description : String
    var body: some View {
        VStack{
            HStack{
                Text(title)
                    .foregroundStyle(.gray)
                Spacer()
                Text(description)
            }
            .fontWeight(.semibold)
            .font(.subheadline)
        }
    }
}
