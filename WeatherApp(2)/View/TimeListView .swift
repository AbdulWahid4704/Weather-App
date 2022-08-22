//
//  TimeListView .swift
//  WeatherApp(2)
//
//  Created by Rusaab Abdul Wahid on 22/08/2022.
//

import SwiftUI

struct TimeListView: View {
    
    let path = Path.init { path in
        
        
        
    }
    
    var body: some View {
        
        VStack {
            
            CustomDivider()
            
            ScrollView(.horizontal) {
                
                HStack(spacing: 35) {
                    
                    ForEach(1..<10) { index in
                        
                        VStack(spacing: 10) {
                            
                            Text("Now")
                                .font(.custom(Constants.MAIN_FONT_LIGHT, size: 12))
                            
                            Text("28°")
                                .font(.custom(Constants.MAIN_FONT, size: 18))
                            
                            
                        }
                        .foregroundColor(.white)
                        
                    }
                    
                }
            }.padding()
            
            CustomDivider()
            
        }
        
        
    }
    
}

struct TimeListView__Previews: PreviewProvider {
    static var previews: some View {
        TimeListView().background(.blue)
    }
}
