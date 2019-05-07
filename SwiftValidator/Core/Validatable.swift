//
//  Validatable.swift
//  Validator
//
//  Created by Deniz Adalar on 28/04/16.
//  Copyright © 2016 jpotts18. All rights reserved.
//

import Foundation

public typealias ValidatableField = AnyObject & Validatable

public protocol Validatable {
    /// Holds the value to be validated
    var validationValue: Any? {
        get
    }
}

extension Validatable {
    /// Returns value as String
    var validationStringValue: String? {
        return validationValue as? String
    }
}

extension UITextField: Validatable {
    
    public var validationValue: Any? {
        return text
    }
}

extension UITextView: Validatable {
    
    public var validationText: String {
        return text ?? ""
    }
}

