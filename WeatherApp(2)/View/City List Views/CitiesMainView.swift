//
//  CitiesMainView.swift
//  WeatherApp(2)
//
//  Created by Rusaab Abdul Wahid on 30/08/2022.
//

import SwiftUI

struct CitiesMainView: View {
    var body: some View {
        
        ScrollView(showsIndicators: false) {
            
            
            AddCityHeader()
            
        }
        .background(
            
            // Background Gradient
            LinearGradient(colors: [.BLUE_GRADIENT_TOP, .BLUE_GRADIENT_BOTTOM], startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)
        )
        
    }
}

struct CitiesMainView_Previews: PreviewProvider {
    static var previews: some View {
        CitiesMainView().background(.blue)
    }
}
