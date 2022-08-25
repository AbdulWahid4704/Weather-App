//
//  Weather Request.swift
//  WeatherApp(2)
//
//  Created by Rusaab Abdul Wahid on 25/08/2022.
//

import Foundation

struct WeatherRequest: Decodable {
    
    var current: CurrentWeather
    var forecast: Forecast
    var location: Location
    
}
