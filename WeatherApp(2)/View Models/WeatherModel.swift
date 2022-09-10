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
    
    @Published var currentCity = "Dubai"
    
    @Published var listOfCities = [String]()
    
    @Published var isInMainView = true
    
    init() {
        getSavedCitiesAndCurrentCity()
    }
    
    func getData() {
        
        // TODO: Customize the url according to spec
        let apiService = APIService(urlString: "http://api.weatherapi.com/v1/forecast.json?key=892ae7ab162c41f0926111722222102&q=\(currentCity)&days=3&aqi=no&alerts=no")
        
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
    
    func getSavedCitiesAndCurrentCity() {
        
        if let cities = UserDefaults.standard.array(forKey: Constants.CITIES_LISTS_KEY) as? [String] {
            listOfCities = cities
        }
        if let currentCity = UserDefaults.standard.string(forKey: Constants.CURRENT_CITY_KEY) {
            self.currentCity = currentCity
        }
        
    }
    
    func updateCity(_ city: String) {
        
        if !listOfCities.contains(city) {
            
            listOfCities.append(city)
            
            UserDefaults.standard.set(listOfCities, forKey: Constants.CITIES_LISTS_KEY)
        }
        
    }
    
    func setCurrentCity(_ city: String) {
        
        currentCity = city
        
        getData()
        
        UserDefaults.standard.set(city, forKey: Constants.CURRENT_CITY_KEY)
        
    }
    
    func validateCity(_ city: String, completion: @escaping (Bool) -> Void) {
        
        let apiService = APIService(urlString: "http://api.weatherapi.com/v1/forecast.json?key=892ae7ab162c41f0926111722222102&q=\(city)&days=3&aqi=no&alerts=no")
        
            apiService.getJSON { (result: Result<WeatherRequest, APIError>) in
            
            switch result {
            case .success:
                completion(true)
            default:
                completion(false)
            }
            
        }
        
        
    }
    
}
