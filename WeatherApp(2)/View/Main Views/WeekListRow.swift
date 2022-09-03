//
//  WeekListRow.swift
//  WeatherApp(2)
//
//  Created by Rusaab Abdul Wahid on 23/08/2022.
//

import SwiftUI

struct WeekListRow: View {
    
    @ObservedObject var preview: WeekListRowPreview
    
    var body: some View {
        
        HStack(spacing: 0) {
            
            Text(preview.day)
                .frame(maxWidth: .infinity, alignment: .leading)
            
            // TODO: Fix the icon
            Image(systemName: "sun.max")
                .frame(maxWidth: .infinity, alignment: .center)
            
            
            
            HStack {
                
                Text(preview.maxTemp)
                Text(preview.minTemp)
                    .opacity(0.65)
                
            }
            .frame(maxWidth: .infinity, alignment: .trailing)
            
        }
        .padding(.vertical)
        .padding(.horizontal, 30)
        .foregroundColor(.white)
        .font(.custom(Constants.MAIN_FONT, size: 16))
        
        
    }
}

//struct WeekListRow_Previews: PreviewProvider {
//    static var previews: some View {
//        WeekListRow().background(.blue)
//    }
//}
