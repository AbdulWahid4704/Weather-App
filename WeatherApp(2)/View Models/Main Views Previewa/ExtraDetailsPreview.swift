//
//  ExtraDetailsPreview.swift
//  WeatherApp(2)
//
//  Created by Rusaab Abdul Wahid on 29/08/2022.
//

import Foundation

class ExtraDetailsPreview: ObservableObject {
    
    @Published var sunrise = "----- am"
    @Published var sunset = "----- pm"
    
    @Published var percipitation = "-- mm"
    @Published var humidity = "-- %"
    @Published var windSpeed = "-- km/h"
    @Published var visibilty = "-- km"
    
    init(current: CurrentWeather, currentDay: ForecastDay) {
        
        displaySunriseAndSunset(astro: currentDay.astro)
        displayDetails(current: current)
        
    }
    
    func displaySunriseAndSunset(astro: Astro) {
        
        self.sunrise = astro.sunrise
        self.sunset = astro.sunset
        
    }
    
    func displayDetails(current: CurrentWeather) {
        
        self.percipitation = "\(Int(current.precipitation)) mm"
        self.humidity = "\(Int(current.humidity)) %"
        self.windSpeed = "\(Int(current.wind)) km/h"
        self.visibilty = "\(Int(current.visibility)) km"
    }
    
}
