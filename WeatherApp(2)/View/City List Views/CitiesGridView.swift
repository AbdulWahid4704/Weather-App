//
//  CitiesGridView.swift
//  WeatherApp(2)
//
//  Created by Rusaab Abdul Wahid on 03/09/2022.
//

import SwiftUI

struct CitiesGridView: View {
    
    let cities: [String]
    @EnvironmentObject var weatherModel: WeatherModel
    
    var body: some View {
        
        let gridItem = GridItem(.flexible(minimum: 100, maximum: 200), spacing: 30)
        LazyVGrid(columns: [gridItem, gridItem], spacing: 30) {
            ForEach(0...cities.count, id: \.self) { index in
    
                if index == 0 {
                    CityGridCell(preview: CityGridCellPreview(city: "", isCelsius: weatherModel.isCelsius, isCurrentLocation: true))
                } else {
                    
                    CityGridCell(preview: CityGridCellPreview(city: cities[index - 1], isCelsius: weatherModel.isCelsius, isCurrentLocation: false))
//                        .onTapGesture {
//                            weatherModel.setCurrentCity(cities[index - 1])
//                            weatherModel.isInMainView = true
//                        }
                }
                
            }
            
            
        }.padding(.horizontal, 30)
            .padding(.vertical, 20)
        
    }
}
//
//struct CitiesGridView_Previews: PreviewProvider {
//    static var previews: some View {
//        CitiesGridView().background(.blue)
//    }
//}
