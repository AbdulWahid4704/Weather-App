//
//  String.swift
//  WeatherApp(2)
//
//  Created by Rusaab Abdul Wahid on 10/09/2022.
//

import Foundation

extension String {
    
    func validateStringForSpace() -> String {
        return self.replacingOccurrences(of: " ", with: "%20")
    }
    
}
