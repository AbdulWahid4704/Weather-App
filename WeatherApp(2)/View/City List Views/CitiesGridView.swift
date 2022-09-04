//
//  CitiesGridView.swift
//  WeatherApp(2)
//
//  Created by Rusaab Abdul Wahid on 03/09/2022.
//

import SwiftUI

struct CitiesGridView: View {
    
    
    
    var body: some View {
        
        let gridItem = GridItem(.flexible(minimum: 100, maximum: 200), spacing: 30)
        LazyVGrid(columns: [gridItem, gridItem], spacing: 30) {
            ForEach(0 ..< 5) { item in
                CityGridCell()
            }
            
            
        }.padding(.horizontal, 30)
            .padding(.vertical, 20)
        
    }
}

struct CitiesGridView_Previews: PreviewProvider {
    static var previews: some View {
        CitiesGridView().background(.blue)
    }
}
