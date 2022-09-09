//
//  AddACityView.swift
//  WeatherApp(2)
//
//  Created by Rusaab Abdul Wahid on 05/09/2022.
//

import SwiftUI

struct AddACityView: View {
    
    @EnvironmentObject var weatherModel: WeatherModel
    
    @Binding var isAddingCity: Bool
    
    @State var textFieldInput = ""
    @State var showError = false
    
    var body: some View {
        
        ZStack {

            Rectangle()
                .opacity(0.15)
                .edgesIgnoringSafeArea(.all)

            ZStack {
                
                Rectangle()
                    .foregroundColor(.white)
                
                VStack(spacing: 12) {
                    Text("New City")
                        .font(Font.custom(Constants.MAIN_FONT, size: 22))
                    
                    Spacer()
                    
                    TextField("", text: $textFieldInput, prompt: Text("City Name"))
                        .textFieldStyle(.roundedBorder)
                    
                    if showError {
                        Text("City Not Found Pls Try Another")
                            .font(Font.custom(Constants.MAIN_FONT_LIGHT, size: 12))
                            .foregroundColor(.red)
                    } else {
                        Text("                             ")
                            .font(Font.custom(Constants.MAIN_FONT_LIGHT, size: 12))
                    }
                    
                    HStack {
                        
                        Button {
                            showError = false
                            textFieldInput = ""
                            isAddingCity.toggle()
                        } label: {
                            Text("Cancel")
                                .font(Font.custom(Constants.MAIN_FONT, size: 22))
                                .foregroundColor(.red)
                        }
                        Spacer()
                        
                        Button {
                            
                            // TODO: Make sure to filter countries aswell as cities
                            // Update the view model about the change if the city is validated
                            weatherModel.validateCity(textFieldInput.trimmingCharacters(in: .whitespacesAndNewlines)) { validated in
                                if validated {
                                    DispatchQueue.main.async {
                                        self.showError = false
                                        
                                        self.isAddingCity.toggle()
                                        
                                        self.weatherModel.updateCity(textFieldInput.trimmingCharacters(in: .whitespacesAndNewlines))
                                    }
                                    
                                } else {
                                    DispatchQueue.main.async {
                                        self.showError = true
                                    }
                                }
                            }
                            
                        } label: {
                            
                            Text("Add City")
                                .font(Font.custom(Constants.MAIN_FONT, size: 22))
                                .foregroundColor(Color(red: 70/255, green: 86/255, blue: 167/255))
                        }
                        .disabled(textFieldInput.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty)
                    }
                    
                    

                }
                .padding(20)
            }
            .frame(width: 310, height: 225, alignment: .center)
            
            
        }
    }
}

//struct AddACityView_Previews: PreviewProvider {
//    static var previews: some View {
//        AddACityView()
//    }
//}
