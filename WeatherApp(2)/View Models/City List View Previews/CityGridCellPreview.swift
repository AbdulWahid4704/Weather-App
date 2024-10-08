//
//  CityGridCellPreview.swift
//  WeatherApp(2)
//
//  Created by Rusaab Abdul Wahid on 04/09/2022.
//

import Foundation

class CityGridCellPreview: ObservableObject, LocationServiceDelegate {
    
    @Published var temp = "--°"
    @Published var city = "------"
    @Published var country = "------"
    @Published var isCurrentLocation = false
    
    var locationService = LocationService()
    
    var isCelsius = true
    
    init(city: String, isCelsius: Bool, isCurrentLocation: Bool) {
        
        self.locationService.delegate = self
        
        self.isCurrentLocation = isCurrentLocation
        self.isCelsius = isCelsius
        
        if isCurrentLocation {
            
            getCurrentLocationData()
        } else {
            
            getDataForCity(city, isCelsius: isCelsius)
        }
        
    }
    
    func getCurrentLocationData() {
        
        locationService.requestGeolocationPermission()
        
    }
    
    func getDataForCity(_ city: String, isCelsius: Bool) {
        
        // TODO: Fix Airport codes
        let apiService = APIService(urlString: "http://api.weatherapi.com/v1/forecast.json?key=892ae7ab162c41f0926111722222102&q=\(city.validateStringForSpace())&days=3&aqi=no&alerts=no")
        
        apiService.getJSON { (result: Result<WeatherRequest, APIError>) in
            
            switch result {
            case .success(let request):
                
                DispatchQueue.main.async {
                    self.country = request.location.country
                    self.temp = isCelsius ? "\(Int(request.current.tempC))°" : "\(Int(request.current.tempF))°"
                    self.city = request.location.name
                }
                
            case .failure(let error):
                print(error)
                
                
            }
            
        }
        
    }
    
    func didGetCity(_ city: String?) {
        
        if isCurrentLocation {
            if let city = city {
                
                getDataForCity(city, isCelsius: self.isCelsius)
                
            }
        }
    }
    
}
