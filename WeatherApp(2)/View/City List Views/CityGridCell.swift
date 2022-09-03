//
//  CityGridCell.swift
//  WeatherApp(2)
//
//  Created by Rusaab Abdul Wahid on 03/09/2022.
//

import SwiftUI

struct CityGridCell: View {
    
    var body: some View {
        
        ZStack {
            
            RoundedRectangle(cornerRadius: 10)
                .foregroundColor(.white)
                .opacity(0.2)
            
            VStack(alignment: .leading,spacing: 0) {
                HStack {
                    Text("28°")
                    Spacer()
                    Image(systemName: "sun.max")
                }
                Spacer()
                Text("Dubai")
                    .padding(.bottom, 5)
                    
                Text("United Arab Emirates")
                    .font(.custom(Constants.MAIN_FONT_LIGHT, size: 12))
                Text("(CurrentLocation)")
                    .font(.custom(Constants.MAIN_FONT_LIGHT, size: 10))
                
            }
            .padding(20)
            .font(.custom(Constants.MAIN_FONT, size: 24))
            .foregroundColor(.white)
        }
        .frame(height: 150)
        
    }
}

struct CityGridCell_Previews: PreviewProvider {
    static var previews: some View {
        CityGridCell().background(.blue)
    }
}
