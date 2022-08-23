//
//  WeekListView.swift
//  WeatherApp(2)
//
//  Created by Rusaab Abdul Wahid on 23/08/2022.
//

import SwiftUI

struct WeekListView: View {
    
    var body: some View {
        
        VStack {
            
            ForEach(1..<4) { index in
                
                WeekListRow()
                
            }
            
        }
    
    }
    
}

struct WeekListView_Previews: PreviewProvider {
    static var previews: some View {
        WeekListView().background(.blue)
    }
}
