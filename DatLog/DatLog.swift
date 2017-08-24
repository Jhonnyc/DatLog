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

    static var config: Configuration!
    
    // Empty init will add every possible log level 
    // and will print to standard output
    public init() {
        DatLog.config = Configuration(printToLog: true,
                               allowedLogs: [.ASSERT, .DEBUG, .ERROR,
                                             .INFO, .VERBOSE, .WARN, .WTF])
    }
    
    // Initializing the class using a configuration class will make it use your
    // own custom configuration
    public init(config configuration: Configuration) {
        DatLog.config = configuration
    }
    
    public static func assert(log line: LogLine) {
        if(config.isPrintToLogout(logLevel: .ASSERT)) {
            print(line)
        }
    }
    
    public static func debug(log line: LogLine) {
        if(config.isPrintToLogout(logLevel: .DEBUG)) {
            print(line)
        }
    }
    
    public static func error(log line: LogLine) {
        if(config.isPrintToLogout(logLevel: .ERROR)) {
            print(line)
        }
    }
    
    public static func info(log line: LogLine) {
        if(config.isPrintToLogout(logLevel: .INFO)) {
            print(line)
        }
    }
    
    public static func verbose(log line: LogLine) {
        if(config.isPrintToLogout(logLevel: .VERBOSE)) {
            print(line)
        }
    }
    
    public static func warn(log line: LogLine) {
        if(config.isPrintToLogout(logLevel: .WARN)) {
            print(line)
        }
    }
    
    public static func wtf(log line: LogLine) {
        if(config.isPrintToLogout(logLevel: .WTF)) {
            print(line)
        }
    }
    
}
