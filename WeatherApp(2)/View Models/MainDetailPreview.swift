//
//  MainDetailPreview.swift
//  WeatherApp(2)
//
//  Created by Rusaab Abdul Wahid on 26/08/2022.
//

import Foundation

class MainDetailPreview: ObservableObject {
    
    @Published var temp = "--°"
    @Published var highLow = "▲ --° ▼ --°"
    @Published var conditionText = "------"
    @Published var feelsLike = "feels like --°"
    
    init(current: CurrentWeather, currentDay: ForecastDay, isCelsius: Bool) {
        
        displayUI(current: current, currentDay: currentDay, isCelsius: isCelsius)
        
    }
    
    func displayUI(current: CurrentWeather, currentDay: ForecastDay, isCelsius: Bool) {
        
        // Display the temp
        self.temp = isCelsius ? "\(Int(current.tempC))°" : "\(Int(current.tempF))°"
        
        // Display the high low
        let celsiusHighLow = "▲ \(Int(currentDay.day.maxTempC))° ▼ \(Int(currentDay.day.minTempC))°"
        let fahrenheitHighLow = "▲ \(Int(currentDay.day.maxTempF))° ▼ \(Int(currentDay.day.minTempF))°"
        self.highLow = isCelsius ? celsiusHighLow : fahrenheitHighLow
        
        // Display the condition
        self.conditionText = current.condition.text
        
        // Display the feels like
        self.feelsLike = isCelsius ? "feels like \(Int(current.feelsLikeC))°" : "feels like \(Int(current.feelsLikeF))°"
        
    }
}
