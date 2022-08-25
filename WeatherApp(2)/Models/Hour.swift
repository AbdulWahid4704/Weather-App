//
//  Hour.swift
//  WeatherApp(2)
//
//  Created by Rusaab Abdul Wahid on 25/08/2022.
//

import Foundation

struct Hour: Identifiable, Decodable {
    
    var id = UUID()
    
    var time: String
    var tempC: String
    var tempF: String
    
    enum CodingKeys: String, CodingKey {
            
        case tempC = "temp_c"
        case tempF = "temp_f"
        case time
        
    }
    
}
