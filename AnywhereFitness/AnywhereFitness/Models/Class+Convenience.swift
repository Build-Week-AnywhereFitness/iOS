//
//  Class+Convenience.swift
//  AnywhereFitness
//
//  Created by Niranjan Kumar on 11/19/19.
//  Copyright © 2019 NarJesse. All rights reserved.
//

import Foundation
import CoreData
extension Class {
    
    var classRepresentation: ClassRepresentation? {
        
        guard let name = name,
            let location = location,
            let classDetail = classDetail,
            let date = date else { return nil }
        
        return ClassRepresentation(name: name, type: Int(), duration: Int(), intensityLevel: Int(), location: location, numOfAttendees: Int(), maxClassSize: Int(), classDetail: classDetail, date: date)
    }
    
    @discardableResult convenience init(name: String,
                                        type: Int,
                                        duration: Int,
                                        intensityLevel: Int,
                                        location: String,
                                        numOfAttendees: Int,
                                        maxClassSize: Int,
                                        classDetail: String,
                                        date: Date,
                                        context: NSManagedObjectContext) {
        self.init(context: context)
        
        self.name = name
        self.location = location
        self.classDetail = classDetail
        self.date = date
    }
    
    @discardableResult convenience init?(classRepresentation: ClassRepresentation, context: NSManagedObjectContext) {
        
        self.init(name: classRepresentation.name,
                  type: classRepresentation.type,
                  duration: classRepresentation.duration,
                  intensityLevel: classRepresentation.intensityLevel,
                  location: classRepresentation.location,
                  numOfAttendees: classRepresentation.numOfAttendees,
                  maxClassSize: classRepresentation.maxClassSize,
                  classDetail: classRepresentation.classDetail,
                  date: classRepresentation.date,
                  context: context)
    }
}
