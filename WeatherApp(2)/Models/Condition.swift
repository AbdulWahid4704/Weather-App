//
//  Condition.swift
//  WeatherApp(2)
//
//  Created by Rusaab Abdul Wahid on 25/08/2022.
//

import Foundation

struct Condition: Identifiable, Decodable {
    
    var id: UUID? = UUID()
    
    var text: String
    var code: Int
    var icon: String
    
}
