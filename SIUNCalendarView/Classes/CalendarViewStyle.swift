//
//  CalendarViewStyle.swift
//  SIUNCalendarView
//
//  Created by 이혜진 on 2019. 2. 24..
//

import Foundation
import UIKit

public struct CalendarViewStyle {
    public enum FirstWeekType {
        case monday
        case sunday
        
        func getWeekDay(weeks: [String], index: Int) -> String {
            switch self {
            case .monday:
                return weeks[(index + 1) % 7]
            case .sunday:
                return weeks[index]
            }
        }
    }
    
    public enum CalendarWeekType {
        case long
        case normal
        case short
        case korean
        
        var weeksArray: [String] {
            let formatter = DateFormatter()
            switch self {
            case .long: return formatter.standaloneWeekdaySymbols
            case .normal: return formatter.shortWeekdaySymbols
            case .short: return formatter.veryShortWeekdaySymbols
            case .korean: return ["일", "월", "화", "수", "목", "금", "토"]
            }
        }
    }
    
    public enum CalendarSelectType {
        case squre
        case round
    }
    
    public var scrollOrientation: UIPageViewController.NavigationOrientation = .horizontal
    
    public var firstWeekType: FirstWeekType = .sunday
    public var selectedType: CalendarSelectType = .round
    public var weekType: CalendarWeekType = .short
    
//    public var weekHeaderHeight: CGFloat = 80.0
    public var weekendColor: UIColor = .red
    public var weekColor: UIColor = .gray
    public var dayColor: UIColor = .black
    public var todayColor: UIColor = .blue
    public var selectedColor: UIColor = .yellow
    public var eventColor: UIColor = .red
    
    public init() { }
}
