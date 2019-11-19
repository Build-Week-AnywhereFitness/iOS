//
//  Instructor+Convenience.swift
//  AnywhereFitness
//
//  Created by Niranjan Kumar on 11/19/19.
//  Copyright © 2019 NarJesse. All rights reserved.
//

import Foundation
import CoreData

extension Instructor {
    
    var instructorRepresentation: InstructorRepresentation? {
        
        guard let name = name,
            let email = email,
            let id = id else { return nil }
        
        return InstructorRepresentation(name: name, email: email, id: id)
    }
    
    @discardableResult convenience init(name: String,
                                        email: String,
                                        id: UUID = UUID(),
                                        context: NSManagedObjectContext) {
        self.init(context: context)
        
        self.name = name
        self.email = email
        self.id = id
    }
    
    @discardableResult convenience init?(instructorRepresentation: InstructorRepresentation, context: NSManagedObjectContext) {
        
        self.init(name: instructorRepresentation.name,
                  email: instructorRepresentation.email,
                  id: instructorRepresentation.id,
                  context: context)
    }
}
