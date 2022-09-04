//
//  CityGridCellPreview.swift
//  WeatherApp(2)
//
//  Created by Rusaab Abdul Wahid on 04/09/2022.
//

import Foundation

class CityGridCellPreview: ObservableObject {
    
    @Published var temp = "--°"
    @Published var city = "------"
    @Published var country = "------"
    @Published var isCurrentLocation = false
    
    init() {
        
        
        
    }
    
}
