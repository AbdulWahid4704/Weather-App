//
//  ForecastDay.swift
//  WeatherApp(2)
//
//  Created by Rusaab Abdul Wahid on 25/08/2022.
//

import Foundation

struct ForecastDay: Decodable, Identifiable {
    
    var id = UUID()
    
    var day: Day
    var astro: Astro
    var hours: [Hour]
    var date: String
 
    enum CodingKeys: String, CodingKey {
        case hours = "hour"
        case day
        case date
        case astro
    }
}
