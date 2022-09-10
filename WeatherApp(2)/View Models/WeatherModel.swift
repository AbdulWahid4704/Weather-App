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
        let apiService = APIService(urlString: "http://api.weatherapi.com/v1/forecast.json?key=892ae7ab162c41f0926111722222102&q=\(currentCity.validateStringForSpace())&days=3&aqi=no&alerts=no")
        
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
    
    func updateCity(_ city: String, completion: @escaping (Bool) -> Void) {
        
        print(city.validateStringForSpace())
        
        // Validate the city by calling the api
        let apiService = APIService(urlString: "http://api.weatherapi.com/v1/forecast.json?key=892ae7ab162c41f0926111722222102&q=\(city.validateStringForSpace())&days=3&aqi=no&alerts=no")
        
            apiService.getJSON { (result: Result<WeatherRequest, APIError>) in
            
            switch result {
            case .success(let result):
                
                // If it returns true pass it back to the view
                completion(true)
                
                // Take the city from the response so as to make sure its not the country
                let city = result.location.name
                
                // Make sure it doesnt exist already to avoid repetition
                if !self.listOfCities.contains(city) {
                    
                    DispatchQueue.main.async {
                        self.listOfCities.append(city)
                        
                        UserDefaults.standard.set(self.listOfCities, forKey: Constants.CITIES_LISTS_KEY)
                        print(self.listOfCities)
                        
                    }
                }
                
            default:
                completion(false)
            }
            
        }
        
    }
    
    func setCurrentCity(_ city: String) {
        
        currentCity = city
        
        getData()
        
        UserDefaults.standard.set(city, forKey: Constants.CURRENT_CITY_KEY)
        
    }
    
    
    
}
