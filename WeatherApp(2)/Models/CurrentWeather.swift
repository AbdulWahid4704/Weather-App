//
//  CurrentWeather.swift
//  WeatherApp(2)
//
//  Created by Rusaab Abdul Wahid on 24/08/2022.
//

import Foundation

struct CurrentWeather: Decodable, Identifiable {
    
    var id = UUID()
    
    var tempC: Double
    var tempF: Double
    var feelsLikeC: Double
    var feelsLikeF: Double
    
    var wind: Double
    var humidity: Double
    var precipitation: Double
    var visibility: Double
    
    var condition: Condition
    
    enum CodingKeys: String, CodingKey {
        
        case tempC = "temp_c"
        case tempF = "temp_f"
        case feelsLikeC = "feelslike_c"
        case feelsLikeF = "feelslike_f"
        case wind = "wind_kph"
        case humidity
        case precipitation = "precip_mm"
        case visibility = "vis_km"
        case condition
        
    }
}
