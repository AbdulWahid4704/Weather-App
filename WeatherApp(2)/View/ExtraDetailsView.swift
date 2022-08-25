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
    
    var body: some View {
        
        ZStack {
            
            HStack {
                
                VStack(alignment: .leading, spacing: 30) {
                    
                    Tile(name: "Sunrise", value: "6:00 am")
                    Tile(name: "Precipitation", value: "10%")
                    Tile(name: "Wind Speed", value: "11 km/h")
                    
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                
                VStack(alignment: .leading, spacing: 30) {
                    
                    Tile(name: " Sunset" , value: " 6:00 pm")
                    Tile(name: " Humidity", value: " 42%")
                    Tile(name: " Visibility", value: " 30 km")
                    
                    
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

struct ExtraDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        ExtraDetailsView().background(.blue)
    }
}
