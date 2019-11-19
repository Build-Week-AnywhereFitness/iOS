//
//  Client+Convenience.swift
//  AnywhereFitness
//
//  Created by Jesse Ruiz on 11/18/19.
//  Copyright © 2019 NarJesse. All rights reserved.
//

import Foundation
import CoreData

extension Client {
    
    var clientRepresentation: ClientRepresentation? {
        
        guard let name = name,
            let email = email else { return nil }
        
        return ClientRepresentation(name: name, email: email)
    }
    
    @discardableResult convenience init(name: String,
                                        email: String,
                                        context: NSManagedObjectContext) {
        self.init(context: context)
        
        self.name = name
        self.email = email
    }
    
    @discardableResult convenience init?(clientRepresentation: ClientRepresentation, context: NSManagedObjectContext) {
        
        self.init(name: clientRepresentation.name,
                  email: clientRepresentation.email,
                  context: context)
    }
}
