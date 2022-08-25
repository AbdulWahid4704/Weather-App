//
//  WeatherApp_2_App.swift
//  WeatherApp(2)
//
//  Created by Rusaab Abdul Wahid on 12/08/2022.
//

import SwiftUI

@main
struct WeatherApp_2_App: App {
    
    init() {
        
        let apiSeervice = APIService(urlString: "http://api.weatherapi.com/v1/forecast.json?key=892ae7ab162c41f0926111722222102&q=London&days=3&aqi=no&alerts=no")
        
            apiSeervice.getJSON { (result: Result<WeatherRequest, APIError>) in
            
            switch result {
            case .success(let success):
                break
            case .failure(let error):
                print(error)
            }
            
        }

    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
