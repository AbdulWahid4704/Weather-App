//
//  ContentView.swift
//  WeatherApp(2)
//
//  Created by Rusaab Abdul Wahid on 12/08/2022.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var weatherModel: WeatherModel
    
    var body: some View {
        
        if weatherModel.isInMainView {
            
            // MARK: Show Main View
            if let currentWeather = weatherModel.currentWeather, let forecastDays = weatherModel.forecastDays {
                
                ScrollView(showsIndicators: false) {
                    
                    // TODO: Pin the header to the top
                    Header(preview: HeaderPreview(currentDay: forecastDays[0]))
                    
                    MainDetailsView(preview: MainDetailPreview(current: currentWeather, currentDay: forecastDays[0], isCelsius: weatherModel.isCelsius, currentCity: weatherModel.currentCity))
                        .padding(.bottom, 30)
                    
                    TimeListView(preview: HourListPreview(currentDay: forecastDays[0], isCelsius: weatherModel.isCelsius))
                    
                    WeekListView(forecastDays: forecastDays)
                    
                    ExtraDetailsView(preview: ExtraDetailsPreview(current: currentWeather, currentDay: forecastDays[0]))
                    
                }
                .background(
                    
                    // Background Gradient
                    LinearGradient(colors: [.BLUE_GRADIENT_TOP, .BLUE_GRADIENT_BOTTOM], startPoint: .top, endPoint: .bottom)
                        .edgesIgnoringSafeArea(.all)
                )
                
            } else {
                
                Text("Error no weather")
                    .onAppear{
                        weatherModel.getData()
                    }
                
            }
        } else {
            
            // MARK: Show city List View
            
            CitiesMainView()
            
        }
        
        

        
    }
}
//
//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
