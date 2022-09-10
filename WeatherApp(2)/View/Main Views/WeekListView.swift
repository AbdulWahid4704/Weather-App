//
//  WeekListView.swift
//  WeatherApp(2)
//
//  Created by Rusaab Abdul Wahid on 23/08/2022.
//

import SwiftUI

struct WeekListView: View {
    
    var forecastDays: [ForecastDay]
    @EnvironmentObject var weatherModel: WeatherModel
    
    var body: some View {
        
        VStack {
            
            ForEach(forecastDays, id: \.id) { day in
                
                WeekListRow(preview: WeekListRowPreview(forecastDay: day, isCelsius: weatherModel.isCelsius))
                
            }
            
        }
    
    }
    
}

//struct WeekListView_Previews: PreviewProvider {
//    static var previews: some View {
//        WeekListView().background(.blue)
//    }
//}
