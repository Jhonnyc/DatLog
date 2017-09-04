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

    private static var config: Configuration!
    private static var loggers = [Logger]()
    
    // Empty init will add every possible log level 
    // and will print to standard output
    public static func initialize() {
        DatLog.config = Configuration(printToLog: true,
                               allowedLogs: [.ASSERT, .DEBUG, .ERROR,
                                             .INFO, .VERBOSE, .WARN, .WTF])
    }
    
    // Initializing the class using a configuration class will make it use your
    // own custom configuration
    public static func initialize(config configuration: Configuration) {
        DatLog.config = configuration
    }
    
    public static func addLogger(_ logger: Logger) {
        loggers.append(logger)
    }
    
    public static func assert(log line: LogLine) {
        if(config.isPrintToLogout(logLevel: .ASSERT)) {
            for logger in loggers {
                logger.assert(log: line)
            }
            print(line)
        }
    }
    
    public static func debug(log line: LogLine) {
        if(config.isPrintToLogout(logLevel: .DEBUG)) {
            for logger in loggers {
                logger.assert(log: line)
            }
            print(line)
        }
    }
    
    public static func error(log line: LogLine) {
        if(config.isPrintToLogout(logLevel: .ERROR)) {
            for logger in loggers {
                logger.assert(log: line)
            }
            print(line)
        }
    }
    
    public static func info(log line: LogLine) {
        if(config.isPrintToLogout(logLevel: .INFO)) {
            for logger in loggers {
                logger.assert(log: line)
            }
            print(line)
        }
    }
    
    public static func verbose(log line: LogLine) {
        if(config.isPrintToLogout(logLevel: .VERBOSE)) {
            for logger in loggers {
                logger.assert(log: line)
            }
            print(line)
        }
    }
    
    public static func warn(log line: LogLine) {
        if(config.isPrintToLogout(logLevel: .WARN)) {
            for logger in loggers {
                logger.assert(log: line)
            }
            print(line)
        }
    }
    
    public static func wtf(log line: LogLine) {
        if(config.isPrintToLogout(logLevel: .WTF)) {
            for logger in loggers {
                logger.assert(log: line)
            }
            print(line)
        }
    }
    
}
