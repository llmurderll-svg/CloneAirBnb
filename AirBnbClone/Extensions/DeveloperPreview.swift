//
//  DeveloperPreview.swift
//  AirBnbClone
//
//  Created by Gustavo Rafael La Madrid Coz on 28/06/26.
//

import Foundation
import SwiftUI

class DeveloperPreview {
    static let shared = DeveloperPreview()
    private init() { }

    var listings: [Listing] = [
        .init(
            id: NSUUID().uuidString,
            ownerUid: "owner_1",
            ownerName: "John Doe",
            ownerImageUrl: "male-profile-photo",
            numberOfBedrooms: 2,
            numberOfBathrooms: 2,
            numberOfGuests: 4,
            numberOfBeds: 3,
            pricePerNight: 150,
            latitude: 34.0522,
            longitude: -118.2437,
            imageUrl: ["imageReference-2","imageReference-3","imageReference-4"],
            address: "123 Ocean Drive",
            city: "Los Angeles",
            state: "California",
            title: "Miami Villa",
            rating: 4.85,
            features: [.selfCheckIn, .superHost],
            amenities: [.wifi, .kitchen, .balcony, .pool],
            type: .villa
        ),
        .init(
            id: NSUUID().uuidString,
            ownerUid: "owner_2",
            ownerName: "Jane Smith",
            ownerImageUrl: "female-profile-photo",
            numberOfBedrooms: 1,
            numberOfBathrooms: 1,
            numberOfGuests: 2,
            numberOfBeds: 1,
            pricePerNight: 85,
            latitude: 40.7128,
            longitude: -74.0060,
            imageUrl: ["imageReference-2","imageReference-3","imageReference-4"],
            address: "55th Avenue Loft",
            city: "New York",
            state: "New York",
            title: "Miami Villa",
            rating: 4.92,
            features: [.superHost],
            amenities: [.wifi, .kitchen, .tv],
            type: .apartment
        ),
        .init(
            id: NSUUID().uuidString,
            ownerUid: "owner_2",
            ownerName: "Jane Smith",
            ownerImageUrl: "female-profile-photo",
            numberOfBedrooms: 1,
            numberOfBathrooms: 1,
            numberOfGuests: 2,
            numberOfBeds: 1,
            pricePerNight: 85,
            latitude: 40.7128,
            longitude: -74.0060,
            imageUrl: ["imageReference-2","imageReference-3","imageReference-4"],
            address: "55th Avenue Loft",
            city: "New York",
            state: "New York",
            title: "Miami Villa",
            rating: 4.92,
            features: [.superHost],
            amenities: [.wifi, .kitchen, .tv],
            type: .apartment
        ),
        .init(
            id: NSUUID().uuidString,
            ownerUid: "owner_2",
            ownerName: "Jane Smith",
            ownerImageUrl: "female-profile-photo",
            numberOfBedrooms: 1,
            numberOfBathrooms: 1,
            numberOfGuests: 2,
            numberOfBeds: 1,
            pricePerNight: 85,
            latitude: 40.7128,
            longitude: -74.0060,
            imageUrl: ["imageReference-2","imageReference-3","imageReference-4"],
            address: "55th Avenue Loft",
            city: "New York",
            state: "New York",
            title: "Miami Villa",
            rating: 4.92,
            features: [.superHost],
            amenities: [.wifi, .kitchen, .tv],
            type: .apartment
        ),
        .init(
            id: NSUUID().uuidString,
            ownerUid: "owner_2",
            ownerName: "Jane Smith",
            ownerImageUrl: "female-profile-photo",
            numberOfBedrooms: 1,
            numberOfBathrooms: 1,
            numberOfGuests: 2,
            numberOfBeds: 1,
            pricePerNight: 85,
            latitude: 40.7128,
            longitude: -74.0060,
            imageUrl: ["imageReference-2","imageReference-3","imageReference-4"],
            address: "55th Avenue Loft",
            city: "New York",
            state: "New York",
            title: "Miami Villa",
            rating: 4.92,
            features: [.superHost],
            amenities: [.wifi, .kitchen, .tv],
            type: .apartment
        )
    ]
}
