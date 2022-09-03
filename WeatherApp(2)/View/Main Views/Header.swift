//
//  Header.swift
//  WeatherApp(2)
//
//  Created by Rusaab Abdul Wahid on 15/08/2022.
//

import SwiftUI

struct Header: View {
    
    @EnvironmentObject var weatherModel: WeatherModel
    @StateObject var preview: HeaderPreview
    
    var body: some View {
        
        HStack {
            
            // TODO: Change so when flipping to f doesnt move the date
            
            Image(systemName: "line.3.horizontal")
            Spacer()
            Text(preview.mainText)
            Spacer()
            Text(weatherModel.isCelsius ? "°C" : "°F")
                .onTapGesture {
                    weatherModel.isCelsius.toggle()
                }
            
        }
        .padding()
        .padding(.horizontal, 30)
        .font(Font.custom(Constants.MAIN_FONT, size: 22))
        .foregroundColor(.white)
        
    }
}

//struct Header_Previews: PreviewProvider {
//    static var previews: some View {
//        Header()
//            .background(
//                Color.orange
//            )
//    }
//}
