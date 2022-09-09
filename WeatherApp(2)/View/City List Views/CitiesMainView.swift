//
//  CitiesMainView.swift
//  WeatherApp(2)
//
//  Created by Rusaab Abdul Wahid on 30/08/2022.
//

import SwiftUI

struct CitiesMainView: View {
    
    @EnvironmentObject var weatherModel: WeatherModel
    
    @State var isAddingCity = false
    
    var body: some View {
        
        ScrollView(showsIndicators: false) {
            
            
            AddCityHeader(isAddingCity: $isAddingCity)
            
            CitiesGridView(cities: weatherModel.listOfCities)
            
        }
        .background(
            
            // Background Gradient
            LinearGradient(colors: [.BLUE_GRADIENT_TOP, .BLUE_GRADIENT_BOTTOM], startPoint: .top, endPoint: .bottom)
                //.edgesIgnoringSafeArea(.all)
                .padding(-50)
        )
        .blur(radius: isAddingCity ? 3 : 0 , opaque: false)
        .overlay {
            
            if isAddingCity {
                
                AddACityView(isAddingCity: $isAddingCity)
                
            }
        }
        
    }
}

//struct CitiesMainView_Previews: PreviewProvider {
//    static var previews: some View {
//        CitiesMainView().background(.blue)
//    }
//}
