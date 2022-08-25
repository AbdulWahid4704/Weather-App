//
//  Day.swift
//  WeatherApp(2)
//
//  Created by Rusaab Abdul Wahid on 25/08/2022.
//

import Foundation

struct Day: Identifiable, Decodable {
    
    var id = UUID()
    
    var maxTempC: String
    var maxTempF: String
    var minTempC: String
    var minTempF: String
    
    var condition: Condition
    
    enum CodingKeys: String, CodingKey {
        
        case maxTempC = "maxtemp_c"
        case minTempC = "mintemp_c"
        case maxTempF = "maxtemp_f"
        case minTempF = "mintemp_f"
        case condition
        
    }
}
