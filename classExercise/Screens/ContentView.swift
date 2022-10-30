//  Created by Nicolaas Geldehuys on 2022/10/28.

import SwiftUI

struct ContentView: View {
    
    @State var showingred: Bool = false
    @State var showinst: Bool = false
    
    // MARK: - Properties
    var city: City = CityData[0]
    
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        
        GeometryReader { geo in
            ZStack{
                
                Color("bg2")
                    .ignoresSafeArea(.all)
                
                
                
                    DisclosureGroup("Ingredients", isExpanded: $showinst){
                        ScrollView{
                        Text(city.ingred)
                                .font(Font.custom("Montserrat", size: 16))
                                .fontWeight(.regular)
                                .padding()
                                .lineSpacing(5)
                                .fixedSize()
                                .frame(height:60)
                                .frame(maxWidth: .infinity)
                        
                        
                            
                            
                        } //Scrollview
                        
                    }
//                    .padding(.top,250)
                
               
                
                    .padding(.leading, 20)
                    .padding(.trailing, 20)
                .padding(.top, 250)
                
                Spacer()
                Divider()
                
                    DisclosureGroup("Instructions", isExpanded: $showingred){
                        
                        
                        Text("""
                    \(city.about)
                    """)
                        .font(Font.custom("Montserrat", size: 16))
                        .fontWeight(.regular)
                        .padding()
                        .lineSpacing(5)
                        
                        
                    }
                    .padding(.leading, 20)
                    .padding(.trailing, 20)
                    .padding(.top, 100)
               
                
                
                
                
                
                Image("\(city.image2)")
                    .resizable()
                    .scaledToFill()
                    .edgesIgnoringSafeArea(.all)
                    .frame(width: 400, height: 200, alignment: .center)
                    .ignoresSafeArea(.all)
//                    .padding(.leading, -50)
                    .padding(.top, -350)
                
                
                HStack {
                    Image(systemName: "clock")
                        .resizable()
                        .frame(width: 20, height: 20)
                         .foregroundColor(.white)
                         .padding(.trailing, 320)
                         .scaledToFill()
                         
                         
                         .padding(.top,-215)
                     
                     Text("\(city.time) min")
                         .foregroundColor(.white)
                         .font(Font.custom("Montserrat", size: 16))
                         .fontWeight(.regular)
                         .padding(.top,-215)
                         .padding(.leading, -310)
                 } //HStack title
                
                
                
                HStack {
                    
                     
                     Text("\(city.by)")
                         .foregroundColor(.white)
                         .font(Font.custom("Montserrat", size: 16))
                         .fontWeight(.regular)
                         .padding(.top,-215)
                         .padding(.leading, 240)
                 } //HStack title
                
                
                
                VStack(alignment: .center){
                    
                    HStack {
                        Image("back")
                            .resizable()
                            .foregroundColor(.white)
                            .padding(.trailing,70)
                            .scaledToFill()
                            .frame(width: 30, height: 30)
                            .ignoresSafeArea(.all)
                            
                        
                        Text("\(city.name)")
                            .foregroundColor(.white)
                            .font(Font.custom("Gobold CUTS", size: 28))
                            .fontWeight(.regular)
                    } //HStack title
                    
                    ZStack{
                        Text("About")
                        
                            .font(Font.custom("Montserrat", size: 18))
                            .fontWeight(.bold)
                            .frame(width: 350)
                            .padding(.top, 180)
                            .padding(.leading, -300)
                            .lineSpacing(5)
                        
                        
                        Text("""
                    \(city.about)
                    """)
                        
                        .font(Font.custom("Montserrat", size: 18))
                        .fontWeight(.regular)
                        .frame(width: 350)
                        .padding(.top, 200)
                        .padding(.bottom, -100)
                        .padding(.leading, -20)
                        .lineSpacing(5)
                        
                    } //ZStack About
                    
                    
                    
                    
                    
                        
                   
                    
                        
                    
                    VStack{
//                        Image(systemName: "\(city.icon)")
//                            .symbolRenderingMode(.multicolor)
//                            .resizable()
//                            .aspectRatio(contentMode: .fit)
//                            .frame(width: 160, height: 160, alignment: .center)
                        
                        
                        // an example from implementing an image from SF Symbols
                        
//                        Text("\(city.about[0].temperature)º")
//                            .font(.system(size: 80, weight: .medium))
//                            .foregroundColor(.white)
//                            .padding(.vertical, 20)
                        
                        HStack(spacing: 15){
                            
                            // Example of for loop
//                            ForEach(city.about, id: \.self.id) {temp in
//                                WeatherForecastView(dayOfWeek: temp.dayOfWeek, imageName: temp.imageName, temperature: temp.temperature)
//                            }
                        }
                        
                        Spacer()
                        
                        TabView{
                            ForecastCardView(text: "Wind Speed", icon: "wind", value: "22 km/h")
                            ForecastCardView(text: "Humidity", icon: "thermometer", value: "23%")
                        }
                        .frame(height: 150)
                        .padding(.top, 150)
                        .tabViewStyle(.page)
                        
                        Spacer()
                        
//                        Button(action: {
//
//                        }) {
//                            Image(systemName: "arrow.clockwise.circle")
//                                .foregroundColor(.white)
//
//                            Text("Change Location")
//                                .foregroundColor(.white)
//                        }.padding()
//                            .buttonStyle(.bordered)
//                            .border(.white, width: 1)
//                            .buttonBorderShape(.capsule)
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
