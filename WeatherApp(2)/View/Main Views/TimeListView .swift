//
//  TimeListView .swift
//  WeatherApp(2)
//
//  Created by Rusaab Abdul Wahid on 22/08/2022.
//

import SwiftUI

struct TimeListView: View {
    
    @ObservedObject var preview: HourListPreview
    
    var body: some View {
        
        VStack {
            
            CustomDivider()
            
            ScrollView(.horizontal, showsIndicators: false) {
                
                ScrollViewReader { scrollView in
                    
                    HStack(spacing: 35) {
                        
                        // TODO: Scroll to make the current hour appear first
                        
                        // Convert the dict into an array of hour,temp tuple values so it becomes ordered
                        ForEach(preview.hourTempArray, id: \.time) { display in
                            
                            VStack(spacing: 10) {
                                
                                Text(display.time)
                                    .font(.custom(Constants.MAIN_FONT_LIGHT, size: 12))
                                
                                Text(display.temp)
                                    .font(.custom(Constants.MAIN_FONT, size: 18))
                                
                                
                            }
                            .foregroundColor(.white)
                            
                        }
                        
                    }
                    .onAppear {
                        withAnimation {
                            scrollView.scrollTo(preview.getCurrentTime(), anchor: .leading)
                        }
                    }
                    
                }
                
                
            }.padding()
            
            CustomDivider()
            
        }
        
        
    }
    
}

//struct TimeListView__Previews: PreviewProvider {
//    static var previews: some View {
//        TimeListView().background(.blue)
//    }
//}
