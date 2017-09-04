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
    private var logLevels: [LogLevel]
    
    public init(printToLog printToLogout: Bool, allowedLogs logLevels: [LogLevel]) {
        self.printToLogout = printToLogout
        self.logLevels = logLevels
    }
    
    public func isPrintToLogout(logLevel allowedLog: LogLevel) -> Bool! {
        return ( self.printToLogout && self.shouldBeLogged(logLevel: allowedLog) )
    }
    
    public func isPrintToLogout() -> Bool! {
        return self.printToLogout
    }
    
    public func shouldBeLogged(logLevel allowedLog: LogLevel) -> Bool! {
        return logLevels.contains(allowedLog)
    }
    
    public func getAllowedLogs() -> [LogLevel] {
        return self.logLevels
    }

}
