//
//  Vehicle.swift
//  MultipleCellTableView
//
//  Created by Fabrício Masiero on 26/05/20.
//  Copyright © 2020 Fabrício Masiero. All rights reserved.
//

import Foundation

public enum VehicleType {
    case car
    case moto
    case bike
}

public struct Vehicle {
    
    public let manufacturer: String
    public let model: String
    public let type: VehicleType
    public let year: Int
    public let imageName: String
    
    init(manufacturer: String, model: String, type: VehicleType, year: Int, imageName: String) {
        self.manufacturer = manufacturer
        self.model = model
        self.type = type
        self.year = year
        self.imageName = imageName
    }
}
