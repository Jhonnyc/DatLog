//
//  Configuration.swift
//  DatLog
//
//  Created by Yoni Kalangan on 17/08/2017.
//  Copyright © 2017 Yoni Kalangan. All rights reserved.
//

import Foundation

class Configuration {
    
    private var printToLogout: Bool!
    
    public init(printToLog printToLogout: Bool) {
        self.printToLogout = printToLogout
    }
    
    public func isPrintToLogout() -> Bool! {
        return self.printToLogout
    }

}
