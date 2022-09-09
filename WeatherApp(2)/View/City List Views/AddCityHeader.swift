//
//  AddCityHeader.swift
//  WeatherApp(2)
//
//  Created by Rusaab Abdul Wahid on 30/08/2022.
//

import SwiftUI

struct AddCityHeader: View {
    
    @EnvironmentObject var weatherModel: WeatherModel
    
    @Binding var isAddingCity: Bool
    
    var body: some View {
        
        HStack {
            
            Image(systemName: "line.3.horizontal")
                .onTapGesture {
                    weatherModel.isInMainView.toggle()
                }
            Spacer()
            Text("Add A City")
            Spacer()
            Text("+")
                .font(Font.custom(Constants.MAIN_FONT, size: 28))
                .onTapGesture {
                    isAddingCity.toggle()
                }
            
        }
        .padding()
        .padding(.horizontal, 30)
        .font(Font.custom(Constants.MAIN_FONT, size: 22))
        .foregroundColor(.white)
        
    }
}

//struct AddCityHeader_Previews: PreviewProvider {
//    static var previews: some View {
//        AddCityHeader().background(.blue)
//    }
//}
