//
//  Hour.swift
//  WeatherApp(2)
//
//  Created by Rusaab Abdul Wahid on 25/08/2022.
//

import Foundation

struct Hour: Identifiable, Decodable {
    
    var id: UUID? = UUID()
    
    var time: String
    var tempC: Double
    var tempF: Double
    
    enum CodingKeys: String, CodingKey {
            
        case tempC = "temp_c"
        case tempF = "temp_f"
        case time
        
    }
    
}
