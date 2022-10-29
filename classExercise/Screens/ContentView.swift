//
//  ContentView.swift
//  classExercise
//
//  Created by Nicolaas Geldehuys on 2022/10/28.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: - Properties
    var city: City = CityData[0]
    
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        
        GeometryReader { geo in
            ZStack{
                
                Color("bg2")
                    .ignoresSafeArea(.all)
                
                
                
                
                
                
                Image("\(city.image2)")
                    .resizable()
                    .scaledToFill()
                    .edgesIgnoringSafeArea(.all)
                    .frame(width: 400, height: 200, alignment: .center)
                    .ignoresSafeArea(.all)
//                    .padding(.leading, -50)
                    .padding(.top, -350)
                
                
                VStack(alignment: .center){
                    
                    HStack {
                        Text("\(city.name)")
                            .foregroundColor(.white)
                            .font(Font.custom("Gobold CUTS", size: 28))
                            .fontWeight(.regular)
                        
                        Image(systemName: "arrow")
                            .foregroundColor(.white)
                        
                    } //HStack title
                    
                    VStack{
                        Image(systemName: "\(city.icon)")
                            .symbolRenderingMode(.multicolor)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 160, height: 160, alignment: .center) // an example from implementing an image from SF Symbols
                        
                        Text("\(city.weather[0].temperature)º")
                            .font(.system(size: 80, weight: .medium))
                            .foregroundColor(.white)
                            .padding(.vertical, 20)
                        
                        HStack(spacing: 15){
                            
                            // Example of for loop
                            ForEach(city.weather, id: \.self.id) {temp in
                                WeatherForecastView(dayOfWeek: temp.dayOfWeek, imageName: temp.imageName, temperature: temp.temperature)
                            }
                        }
                        
                        Spacer()
                        
                        TabView{
                            ForecastCardView(text: "Wind Speed", icon: "wind", value: "22 km/h")
                            ForecastCardView(text: "Humidity", icon: "thermometer", value: "23%")
                        }
                        .frame(height: 150)
                        .padding()
                        .tabViewStyle(.page)
                        
                        Spacer()
                        
                        Button(action: {
                            
                        }) {
                            Image(systemName: "arrow.clockwise.circle")
                                .foregroundColor(.white)
                            
                            Text("Change Location")
                                .foregroundColor(.white)
                        }.padding()
                            .buttonStyle(.bordered)
                            .border(.white, width: 1)
                            .buttonBorderShape(.capsule)
                    }
                }
            }
        }
    }
} //Gemoetry Reader
   
        
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
