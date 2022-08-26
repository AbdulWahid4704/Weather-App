//
//  Astror.swift
//  WeatherApp(2)
//
//  Created by Rusaab Abdul Wahid on 25/08/2022.
//

import Foundation

struct Astro: Identifiable, Decodable {
    
    var id: UUID? = UUID()
    
    var sunrise: String
    var sunset: String
    
    
}
