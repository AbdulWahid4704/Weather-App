//
//  ContentView.swift
//  WeatherApp(2)
//
//  Created by Rusaab Abdul Wahid on 12/08/2022.
//

import SwiftUI

struct ContentView: View {
    
    
    var body: some View {

        ScrollView(showsIndicators: false) {

                Header()

                MainDetailsView()
                    .padding(.bottom, 30)

                TimeListView()
                
                WeekListView()
                
                ExtraDetailsView()
                
            }
        .background(
            
            // Background Gradient
            LinearGradient(colors: [.BLUE_GRADIENT_TOP, .BLUE_GRADIENT_BOTTOM], startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)
        )

        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
