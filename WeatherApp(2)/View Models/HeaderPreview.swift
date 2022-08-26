//
//  HeaderPreview.swift
//  WeatherApp(2)
//
//  Created by Rusaab Abdul Wahid on 26/08/2022.
//

import Foundation

class HeaderPreview: ObservableObject {
    
    @Published var dateString = "---, -- ---"
    
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
        
        self.dateString = formattedString
        
    }
    
}
