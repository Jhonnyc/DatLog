//
//  Logger.swift
//  DatLog
//
//  Created by Yoni Kalangan on 24/08/2017.
//  Copyright © 2017 Yoni Kalangan. All rights reserved.
//

import Foundation

protocol Logger {
    func assert(log line: LogLine)
    func debug(log line: LogLine)
    func error(log line: LogLine)
    func info(log line: LogLine)
    func verbose(log line: LogLine)
    func warn(log line: LogLine)
    func wtf(log line: LogLine)
}
