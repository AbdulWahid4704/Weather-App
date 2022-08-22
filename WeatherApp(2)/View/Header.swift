//
//  Header.swift
//  WeatherApp(2)
//
//  Created by Rusaab Abdul Wahid on 15/08/2022.
//

import SwiftUI

struct Header: View {
    
    var body: some View {
        
        HStack {
            
            Image(systemName: "line.3.horizontal")
            Spacer()
            Text("Mon, 16th July")
            Spacer()
            Text("°C")
            
        }
        .padding()
        .padding(.horizontal, 30)
        .font(Font.custom(Constants.MAIN_FONT, size: 22))
        .foregroundColor(.white)
        
    }
}

struct Header_Previews: PreviewProvider {
    static var previews: some View {
        Header()
            .background(
                Color.orange
            )
    }
}
