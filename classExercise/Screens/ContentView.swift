//  Created by Nicolaas Geldehuys on 2022/10/28.

import SwiftUI

struct ContentView: View {
    //Properties
    @State var showingred: Bool = false
    @State var showinst: Bool = false
    var city: City = CityData[0]
    @Environment(\.colorScheme) var colorScheme
    var body: some View {
        
    //Views
        ZStack{
        Color("bg2") //Bg
        .ignoresSafeArea(.all)

            ZStack{ //Main ZStack
            Rectangle()
            .foregroundColor(Color("bg2"))
            .frame(width: 400, height: 70)
            .fixedSize()
            .padding(.top,730)
                        
            ZStack{ //Bottom Bar
            Text("Level") //Level of difficulty
            .fontWeight(.bold)
            .foregroundColor(Color("bg"))
            .font(Font.custom("Montserrat", size: 18))
            .fontWeight(.regular)
            .padding(.top, 730)
            .padding(.leading, -150)
                            
            Text("\(city.level)")
            .fontWeight(.regular)
            .foregroundColor(Color("bg"))
            .font(Font.custom("Montserrat", size: 18))
            .fontWeight(.regular)
            .padding(.top, 730)
            .padding(.trailing, 150)
                            
            Text("Serves") //Serves x amount
            .fontWeight(.bold)
            .foregroundColor(Color("bg"))
            .font(Font.custom("Montserrat", size: 18))
            .fontWeight(.regular)
            .padding(.top, 730)
            .padding(.leading, 150)
                            
            Text("\(city.serves)")
            .fontWeight(.regular)
            .foregroundColor(Color("bg"))
            .font(Font.custom("Montserrat", size: 18))
            .fontWeight(.regular)
            .padding(.top, 730)
            .padding(.leading, 250)
            } // HStack Bottom rectangle
            } //ZStack bottom rectangle
                    
                    
//                    ForEach(city.CityData, id: \.self.id) {
//                        temp in
//                        CityData(name: temp.name, by: temp.by, icon: temp.icon, image2: temp.image2, time: temp.time, about: temp.about, ingred: temp.ingred, level: temp.level, serves: temp.serves)
//                    }
                                
                Spacer()
                Divider()
                .padding(.top, -40)
                    
                ZStack{
                DisclosureGroup("Ingredients", isExpanded: $showinst){
                    ScrollView{
                        Text(city.ingred)
                        .font(Font.custom("Montserrat", size: 16))
                        .fontWeight(.regular)
                        .padding()
                        .lineSpacing(5)
                        } //Scrollview
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                        frame(height: 80)
                    
                } // DisclosureGroup
                .padding(.leading, 20)
                .padding(.trailing, 20)
                .padding(.top, 250)
  
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
                        .padding(.top, 60)
                    }
                     
                    Image("\(city.image2)")
                        .resizable()
                        .scaledToFill()
                        .edgesIgnoringSafeArea(.all)
                        .frame(width: 400, height: 200, alignment: .center)
                        .ignoresSafeArea(.all)
                        .padding(.bottom, 600)
                        .padding(.top, -60)
                    
                    HStack {
                        Image(systemName: "clock")
                            .resizable()
                            .frame(width: 20, height: 20)
                            .foregroundColor(.white)
                            .padding(.trailing, 320)
                            .scaledToFill()
                            .padding(.top,-260)
                        
                        Text("\(city.time) min")
                            .foregroundColor(.white)
                            .font(Font.custom("Montserrat", size: 16))
                            .fontWeight(.regular)
                            .padding(.top,-260)
                            .padding(.leading, -310)
                    } //HStack title
                    
                    HStack {
                        Text("By \(city.by)")
                            .foregroundColor(.white)
                            .font(Font.custom("Montserrat", size: 16))
                            .fontWeight(.regular)
                            .padding(.top,-260)
                            .padding(.leading, 240)
                    } //HStack title
                    
                    VStack(alignment: .center){
                        
                        ZStack {

                            Text("\(city.name)")
                                .foregroundColor(.white)
                                .font(Font.custom("Gobold CUTS", size: 24))
                                .fontWeight(.regular)
                                .padding(.top, 00)
                                .padding(.leading, 80)
                                .padding(.trailing, 60)
                                .multilineTextAlignment(.center)
                        } //HStack title
                        
                        ZStack{
                            Text("About")
                            
                                .font(Font.custom("Montserrat", size: 18))
                                .fontWeight(.bold)
                                .frame(width: 350)
                                .padding(.top, 170)
                                .padding(.leading, -300)
                                .lineSpacing(5)
                            
                            
                            Text("""
                    \(city.about)
                    """)
                            
                            .font(Font.custom("Montserrat", size: 18))
                            .fontWeight(.regular)
                            .frame(width: 350)
                            .padding(.top, 190)
                            .padding(.bottom, -100)
                            .padding(.leading, -20)
                            .lineSpacing(5)
                            
                        } //ZStack About

                        VStack{
                            Spacer()
    
                            Button(action: {
                                guard let google = URL(string: "https://www.healthyfood.com/"),
                                    UIApplication.shared.canOpenURL(google) else {
                                    return
                                }
                                UIApplication.shared.open(google,
                                                          options: [:],
                                                          completionHandler: nil)
                            }) {
                            TabView{
                                Image("link1")
                                    .resizable()
                                    .scaledToFit()
                                    .cornerRadius(40)
                                
                                Image("link2")
                                    .resizable()
                                    .scaledToFit()
                                    .cornerRadius(40)
                            }
                        } //link
                        .frame(width: 375, height: 150)
                        .padding(.top, 250)
                        .tabViewStyle(.page)
                        .cornerRadius(40)
                            
                        Spacer()
                        }
                    }
                }
//                                                } //temp
//                                            } //ForEach
            }
        }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
