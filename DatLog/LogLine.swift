//
//  LogLine.swift
//  DatLog
//
//  Created by Yoni Kalangan on 22/08/2017.
//  Copyright © 2017 Yoni Kalangan. All rights reserved.
//

import Foundation

public class LogLine : CustomStringConvertible {
    
    private var inClass: CustomStringConvertible
    private var inMethod: String
    private var error: String
    
    public init(inClass clazz: CustomStringConvertible, inMethod method: String, withProblem error: String) {
        self.inClass = clazz
        self.inMethod = method
        self.error = error
    }
    
    public var description: String {
        return inClass.description + " " + inMethod + " " + error
    }
    
}
