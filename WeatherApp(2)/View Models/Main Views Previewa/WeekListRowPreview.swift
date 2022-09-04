//
//  WeekListPreview.swift
//  WeatherApp(2)
//
//  Created by Rusaab Abdul Wahid on 29/08/2022.
//

import Foundation

class WeekListRowPreview: ObservableObject {
    
    @Published var day = "-------"
    @Published var minTemp = "--°"
    @Published var maxTemp = "--°"
    
    let inputDF: DateFormatter = {
        let d = DateFormatter()
        d.dateFormat = "yyyy-MM-dd"
        return d
    }()
    let displayDF: DateFormatter = {
        let d = DateFormatter()
        d.dateFormat = "EEEE"
        return d
    }()
    
    init(forecastDay: ForecastDay, isCelsius: Bool) {
        
        let day = forecastDay.day
        minTemp = isCelsius ? "\(Int(day.minTempC))" : "\(Int(day.minTempF))"
        maxTemp = isCelsius ? "\(Int(day.maxTempC))" : "\(Int(day.maxTempF))"
        
        let inputDateString = inputDF.date(from: forecastDay.date)
        if let inputDateString = inputDateString {
            self.day = displayDF.string(from: inputDateString)
        }
        
    }
    
}
