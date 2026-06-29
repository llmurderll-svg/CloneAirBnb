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
    @State private var startDate: Date = Date()
    @State private var endDate: Date = Date()
    @State private var numGuests: Int = 0
    var body: some View {
        VStack {
            HStack{
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
                Spacer()
                if !destination.isEmpty{
                    Button("Clear"){
                        destination = ""
                    }
                    .foregroundStyle(.black)
                    .font(.subheadline)
                    .fontWeight(.semibold)
                }
            }
            .padding()
            
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
            .modifier(CollapsibleDestinationViewModifier())
            .frame(height: selectedOption == .location ? 120 :64)
            .onTapGesture {
                withAnimation(.snappy){
                    selectedOption = .location
                }
            }
            
            VStack{
                if selectedOption == .dates {
                   Text("When is your trip?")
                        .font(.title2)
                        .fontWeight(.semibold)
                    VStack{
                        DatePicker("From", selection: $startDate, displayedComponents: .date)
                        Divider()
                        DatePicker("To", selection: $endDate, displayedComponents: .date)
                    }
                    .foregroundStyle(.gray)
                    .font(.subheadline)
                    .fontWeight(.semibold)
                } else{
                    CollapsePickerView(title: "When", description:"Add Dates")
                }
            }
            .modifier(CollapsibleDestinationViewModifier())
            .frame(height: selectedOption == .dates ? 180 :64)
            .onTapGesture {
                withAnimation(.snappy){
                    selectedOption = .dates
                }
            }
            
            VStack{
                if selectedOption == .guests {
                    Text("Who's coming?")
                         .font(.title2)
                         .fontWeight(.semibold)
                    Stepper(
                        onIncrement: {
                            numGuests += 1
                        }, onDecrement: {
                            guard numGuests > 0 else { return }
                            numGuests -= 1
                        }, label: {
                            Text("\(numGuests) Adults")
                        }
                    )
                } else{
                    CollapsePickerView(title: "Who", description:"Add Guests")
                }
            }
            .modifier(CollapsibleDestinationViewModifier())
            .frame(height: selectedOption == .guests ? 120 :64)
            .onTapGesture {
                withAnimation(.snappy){
                    selectedOption = .guests
                }
            }
            
            
            Spacer()
        }
    }
}

#Preview {
    DestinationSearchView(show: .constant(false))
}


