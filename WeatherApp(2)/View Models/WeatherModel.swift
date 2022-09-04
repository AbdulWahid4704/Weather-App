//
//  WeatherModel.swift
//  WeatherApp(2)
//
//  Created by Rusaab Abdul Wahid on 25/08/2022.
//

import Foundation
import SwiftUI

class WeatherModel: ObservableObject {
    
    @Published var currentWeather: CurrentWeather?
    @Published var forecastDays: [ForecastDay]?
    
    @Published var isCelsius = true
    
    @Published var listOfCities = [String]()
    
    init() {
        getSavedCities()
    }
    
    func getData() {
        
        // TODO: Customize the url according to spec
        let apiService = APIService(urlString: "http://api.weatherapi.com/v1/forecast.json?key=892ae7ab162c41f0926111722222102&q=London&days=3&aqi=no&alerts=no")
        
            apiService.getJSON { (result: Result<WeatherRequest, APIError>) in
            
            switch result {
            case .success(let request):
                DispatchQueue.main.async {
                    self.currentWeather = request.current
                    self.forecastDays = request.forecast.forecastDays
                }
            case .failure(let error):
                print(error)
            }
            
        }

        
    }
    
    func getSavedCities() {
        
        if let cities = UserDefaults.standard.array(forKey: Constants.CITIES_LISTS_KEY) as? [String] {
            listOfCities = cities
        }
        
    }
    
}
