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

        if let currentWeather = weatherModel.currentWeather, let forecastDays = weatherModel.forecastDays {
            
            ScrollView(showsIndicators: false) {

                Header(preview: HeaderPreview(currentDay: forecastDays[0]))

                MainDetailsView(preview: MainDetailPreview(current: currentWeather, currentDay: forecastDays[0], isCelsius: weatherModel.isCelsius))
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
        
        

        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
