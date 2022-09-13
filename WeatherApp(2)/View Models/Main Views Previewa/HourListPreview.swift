//
//  HourListPreview.swift
//  WeatherApp(2)
//
//  Created by Rusaab Abdul Wahid on 29/08/2022.
//

import Foundation

class HourListPreview: ObservableObject {
    
    @Published var hourTempArray: [HourTempDisplay] = []
    
    let stringToDateDF: DateFormatter = {
        let d = DateFormatter()
        d.dateFormat = "yyyy-MM-dd HH:mm"
        return d
    }()
    
    let displayDF: DateFormatter = {
        let d = DateFormatter()
        d.amSymbol = "am"
        d.pmSymbol = "pm"
        d.dateFormat = "h a"
        return d
    }()
    
    init(currentDay: ForecastDay, isCelsius: Bool) {
        
        for hour in currentDay.hours {
            
            var displayTime = ""
            
            // format the string
            let timeFromString = stringToDateDF.date(from: hour.time)
            // If it doesnt work use placeholder
            if let timeFromString = timeFromString {
                displayTime = displayDF.string(from: timeFromString)
            } else {
                displayTime = "---"
            }
            
            let temperature = isCelsius ? "\(Int(hour.tempC))°" : "\(Int(hour.tempF))°"
            
            print(displayTime)
            print("-" + temperature)
            
            // Create the display object
            hourTempArray.append(HourTempDisplay(time: displayTime, temp: temperature))
            
        }
        
    }
    
    func getCurrentTime() -> String {
        
        displayDF.string(from: Date())
        
    }
}

struct HourTempDisplay {
    
    var time: String
    var temp: String
    
}
