//
//  WeatherModel.swift
//  WeatherApp(2)
//
//  Created by Rusaab Abdul Wahid on 25/08/2022.
//

import Foundation

class WeatherModel: ObservableObject {
    
    @Published var currentWeather: CurrentWeather?
    @Published var forecastDays: [ForecastDay]?
    
    
    
    
}
