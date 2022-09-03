//
//  DashedDivider.swift
//  WeatherApp(2)
//
//  Created by Rusaab Abdul Wahid on 22/08/2022.
//

import SwiftUI

struct CustomDivider: View {
    
    // divider color
    let dividerColor = Color(.sRGB, red: 160/255, green: 160/255, blue: 160/255, opacity: 0.5)
    
    var body: some View {
        
        GeometryReader { geo in
            
            Path { path in
                
                path.move(to: CGPoint.zero)
                path.addLine(to: CGPoint(x: geo.size.width, y: 0))
                
            }
            .stroke(style: StrokeStyle(lineWidth: 1.2))
            .foregroundColor(dividerColor)
            
        }
        .frame(height: 1)
        
    }
}

struct CustomDivider_Previews: PreviewProvider {
    static var previews: some View {
        CustomDivider()
    }
}
