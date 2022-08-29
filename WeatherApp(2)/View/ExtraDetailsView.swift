//
//  ExtraDetailsView.swift
//  WeatherApp(2)
//
//  Created by Rusaab Abdul Wahid on 23/08/2022.
//

import SwiftUI

struct ExtraDetailsView: View {
    
    private let startGradient = Color(red: 220/255, green: 220/255, blue: 220/255, opacity: 0.15)
    private let endGradient = Color(red: 220/255, green: 220/255, blue: 220/255, opacity: 0)
    
    @ObservedObject var preview: ExtraDetailsPreview
    
    var body: some View {
        
        ZStack {
            
            HStack {
                
                VStack(alignment: .leading, spacing: 30) {
                    
                    Tile(name: "Sunrise", value: preview.sunrise)
                    Tile(name: "Precipitation", value: preview.percipitation)
                    Tile(name: "Wind Speed", value: preview.windSpeed)
                    
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                
                VStack(alignment: .leading, spacing: 30) {
                    
                    Tile(name: " Sunset" , value: " " + preview.sunset)
                    Tile(name: " Humidity", value: " " + preview.humidity)
                    Tile(name: " Visibility", value: " " + preview.visibilty)
                    
                    
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                
                Spacer()
                
                
            }
            .padding(30)
            .background(
                Rectangle()
                    .fill(
                        LinearGradient(colors: [startGradient, endGradient], startPoint: .top, endPoint: .bottom)
                    )
            )
        }
        
    }
    
}

struct Tile: View {
    
    var name: String
    var value: String
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 8) {
            
            Text(name)
                .font(.custom(Constants.MAIN_FONT_LIGHT, size: 16))
            Text(value)
                .font(.custom(Constants.MAIN_FONT, size: 20))
            
            
        }
        .foregroundColor(.white)
        
    }
    
}

//struct ExtraDetailsView_Previews: PreviewProvider {
//    static var previews: some View {
//        ExtraDetailsView().background(.blue)
//    }
//}
