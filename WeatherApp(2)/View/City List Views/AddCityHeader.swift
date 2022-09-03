//
//  AddCityHeader.swift
//  WeatherApp(2)
//
//  Created by Rusaab Abdul Wahid on 30/08/2022.
//

import SwiftUI

struct AddCityHeader: View {
    
    var body: some View {
        
        HStack {
            
            // TODO: Change so when flipping to f doesnt move the date
            
            Image(systemName: "line.3.horizontal")
            Spacer()
            Text("Add A City")
            Spacer()
            Text("+")
            
        }
        .padding()
        .padding(.horizontal, 30)
        .font(Font.custom(Constants.MAIN_FONT, size: 22))
        .foregroundColor(.white)
        
    }
}

struct AddCityHeader_Previews: PreviewProvider {
    static var previews: some View {
        AddCityHeader()
    }
}
