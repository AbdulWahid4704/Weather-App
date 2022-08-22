//
//  MainDetailsView.swift
//  WeatherApp(2)
//
//  Created by Rusaab Abdul Wahid on 15/08/2022.
//

import SwiftUI

struct MainDetailsView: View {
    
    var body: some View {
        
        HStack(alignment: .center, spacing: 0) {
            
            // The Main Detials
            VStack(alignment: .leading) {
                
                Text("Dubai")
                    .font(Font.custom(Constants.MAIN_FONT, size: 24))
                    .padding(.bottom, 10)
                
                Text("28°")
                    .font(Font.custom(Constants.MAIN_FONT, size: 90))
                    .padding(.top, 30)
                    
                
                Text("▲ 30° ▼ 20°")
                    .padding(.bottom, 30)
                    
                    
                Text("Sunny")
                    .padding(.top, 10)
                    .font(Font.custom(Constants.MAIN_FONT, size: 24))
                
                Text("Feels like 26°")
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

struct MainDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        MainDetailsView().background(Color.orange)
    }
}
