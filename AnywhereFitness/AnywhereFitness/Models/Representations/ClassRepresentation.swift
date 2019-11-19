//
//  ClassRepresentation.swift
//  AnywhereFitness
//
//  Created by Jesse Ruiz on 11/18/19.
//  Copyright © 2019 NarJesse. All rights reserved.
//

import Foundation

struct ClassRepresentation: Codable {
    let name: String
    let type: Int
    let startTime: Date
    let duration: Int
    let intensityLevel: Int
    let location: String
    let numOfAttendees: Int
    let maxClassSize: Int
    let classDetail: String
    let date: Date
}
