//
//  File.swift
//  
//
//  Created by Alex H. on 30.12.22.
//

import Foundation

public enum ChartRange: String, CaseIterable
{
    case oneDay = "1d"
    case oneWeek = "5d"
    case oneMonth = "1mo"
    case threeMonths = "3mo"
    case sixMonths = "6mo"
    case ytd = "ytd"
    case oneYear = "1y"
    case twoYears = "2y"
    case fiveYears = "5y"
    case tenYears = "10y"
    case max = "max"
    
    public var interval: String
    {
        switch self
        {
        case .oneDay: return "1m"
        case .oneWeek: return "5m"
        case .oneMonth: return "90m"
        case .threeMonths, .sixMonths, .ytd, .oneYear, .twoYears: return "1d"
        case .fiveYears , .tenYears: return "1wk"
        case .max: return "3mo"
        }
    }
}
