//
//  Validation.swift
//
//  Created by Jeff Potter on 11/11/14.
//  Copyright (c) 2015 jpotts18. All rights reserved.
//

import Foundation

/**
 The `Rule` protocol declares the required methods for all objects that subscribe to it.
 */
public protocol Rule {
    /**
     Validates field.
     
     - parameter field: Validatable field to be validated.
     - returns: Boolean value. True if validation is successful; False if validation fails.
     */
    func validate(_ field: Validatable) -> Bool
    /**
     Displays error message of a field that has failed validation.
     
     - returns: String of error message.
     */
    func errorMessage() -> String
}
