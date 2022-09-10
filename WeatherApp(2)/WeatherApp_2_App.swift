//
//  WeatherApp_2_App.swift
//  WeatherApp(2)
//
//  Created by Rusaab Abdul Wahid on 12/08/2022.
//

import SwiftUI

@main
struct WeatherApp_2_App: App {
    
//    init() {
//        UserDefaults.standard.set(["Dubai", "London"], forKey: Constants.CITIES_LISTS_KEY)
//    }
    
    var body: some Scene {
        WindowGroup {
            
            ContentView()
                .environmentObject(WeatherModel())
            
        }
    }
}

