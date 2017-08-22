//
//  DatLog.swift
//  DatLog
//
//  Created by Yoni Kalangan on 17/08/2017.
//  Copyright © 2017 Yoni Kalangan. All rights reserved.
//

import Foundation
import CoreData

class DatLog {

    var config: Configuration;
    
    public init() {
        config = Configuration(printToLog: true)
    }
    
    public func e() {
        if(config.isPrintToLogout()) {
            print("problem", to: &TextOutputStream())
        }
    }
}
