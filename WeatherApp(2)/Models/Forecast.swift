//
//  Forecast.swift
//  WeatherApp(2)
//
//  Created by Rusaab Abdul Wahid on 25/08/2022.
//

import Foundation

struct Forecast: Decodable, Identifiable {
    
    var id: UUID? = UUID()
    
    var forecastDays: [ForecastDay]
    
    enum CodingKeys: String, CodingKey {
        case forecastDays = "forecastday"
    }
    
}

