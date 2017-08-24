//
//  LogLevel.swift
//  DatLog
//
//  Created by Yoni Kalangan on 24/08/2017.
//  Copyright © 2017 Yoni Kalangan. All rights reserved.
//

import Foundation

public enum LogLevel {
    case ASSERT // Assert for dev purposes
    case DEBUG // Debug for dev purposes
    case ERROR // Error for production
    case INFO // Info for production
    case VERBOSE // Verbose for production\dev
    case WARN // Warn for production\dev
    case WTF // "What a Terrible Failure!" for production\dev
}
