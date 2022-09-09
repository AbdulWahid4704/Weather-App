//
//  WeatherApp_2_App.swift
//  WeatherApp(2)
//
//  Created by Rusaab Abdul Wahid on 12/08/2022.
//

import SwiftUI

@main
struct WeatherApp_2_App: App {
    
    
    var body: some Scene {
        WindowGroup {
            
            ContentView()
                .environmentObject(WeatherModel())
            
        }
    }
}

