//
//  MainDetailsView.swift
//  WeatherApp(2)
//
//  Created by Rusaab Abdul Wahid on 15/08/2022.
//

import SwiftUI

struct MainDetailsView: View {
    
    @ObservedObject var preview : MainDetailPreview
    
    var body: some View {
        
        HStack(alignment: .center, spacing: 0) {
            
            // The Main Detials
            VStack(alignment: .leading) {
                
            // TODO: Fix the preview of location
                
                // City
                Text(preview.city)
                    .font(Font.custom(Constants.MAIN_FONT, size: 24))
                    .padding(.bottom, 10)
                
                // Temperature
                Text(preview.temp)
                    .font(Font.custom(Constants.MAIN_FONT, size: 90))
                    .padding(.top, 30)
                    
                // Highlow
                Text(preview.highLow)
                    .padding(.bottom, 30)
                    
                // Condition text
                Text(preview.conditionText)
                    .padding(.top, 10)
                    .font(Font.custom(Constants.MAIN_FONT, size: 24))
                
                // feels like
                Text(preview.feelsLike)
                    .font(Font.custom(Constants.MAIN_FONT_LIGHT, size: 14))
                    
                
            }
            .padding(.vertical, 40)
            .padding(.leading, 30)
            
            Spacer()
            
            // The Weather Icon
            ZStack {
                
                Circle()
                    .fill(.white)
                    .opacity(0.07)
                    .frame(width: 375, height: 375)
                
                // TODO: Fix the preview of the icon
                Image(systemName: "sun.max")
                    .font(Font.system(size: 250))
                    .foregroundColor(.white)
                    
                
            }
            .frame(width: 375/2, height: 375)
            .offset(x: 375/4)
            
        }
        .foregroundColor(.white)
        
        
        
    }
}

//struct MainDetailsView_Previews: PreviewProvider {
//    static var previews: some View {
//        MainDetailsView().background(Color.orange)
//    }
//}
