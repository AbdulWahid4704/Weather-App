//
//  CityGridCell.swift
//  WeatherApp(2)
//
//  Created by Rusaab Abdul Wahid on 03/09/2022.
//

import SwiftUI

struct CityGridCell: View {
    
    @ObservedObject var preview: CityGridCellPreview
    
    var body: some View {
        
        ZStack {
            
            RoundedRectangle(cornerRadius: 10)
                .foregroundColor(.white)
                .opacity(0.2)
            
            // TODO: Fix the icon
            VStack(alignment: .leading,spacing: 0) {
                
                HStack {
                    Text(preview.temp)
                    Spacer()
                    Image(systemName: "sun.max")
                }
                
                Spacer()
                
                Text(preview.city)
                    .padding(.bottom, 5)
                    
                Text(preview.country)
                    .font(.custom(Constants.MAIN_FONT_LIGHT, size: 12))
                
                if preview.isCurrentLocation {
                    Text("(CurrentLocation)")
                        .font(.custom(Constants.MAIN_FONT_LIGHT, size: 10))
                }
                
            }
            .padding(20)
            .font(.custom(Constants.MAIN_FONT, size: 24))
            .foregroundColor(.white)
        }
        .frame(height: 150)
        
    }
}

//struct CityGridCell_Previews: PreviewProvider {
//    static var previews: some View {
//        CityGridCell().background(.blue)
//    }
//}
