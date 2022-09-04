//
//  HeaderPreview.swift
//  WeatherApp(2)
//
//  Created by Rusaab Abdul Wahid on 26/08/2022.
//

import Foundation

class HeaderPreview: ObservableObject {
    
    @Published var mainText = "---, -- ---"
    @Published var leftSideSymbol = "--"
    
    // init for the weather
    init(currentDay: ForecastDay) {
        
        let dateString = currentDay.date
        
        let d1: DateFormatter = {
            let d = DateFormatter()
            d.dateFormat = "yyyy-MM-dd"
            return d
        }()
        guard let date = d1.date(from: dateString) else { return }
        
        let d2: DateFormatter = {
            let d = DateFormatter()
            d.dateFormat = "E, d MMM"
            return d
        }()
        let formattedString = d2.string(from: date)
        
        // Set the main text and left side symbol
        self.mainText = formattedString
        self.leftSideSymbol = "°C"
        
    }
    
    // Default initializer for anything
    init(mainText: String, leftSideSymbol: String) {
        
        self.mainText = "Add A City"
        self.leftSideSymbol = "+"
        
    }
    
}
