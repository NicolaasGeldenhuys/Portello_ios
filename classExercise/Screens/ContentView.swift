//  Created by Nicolaas Geldehuys on 2022/10/28.

import SwiftUI

struct ContentView: View {
    
    @State var showingred: Bool = false
    @State var showinst: Bool = false
    
    // MARK: - Properties
    var city: City = CityData[0]
    
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        
        ScrollView{
            
//            GeometryReader { geo in
                ZStack{
                    

                    
                    Color("bg2")
                        .ignoresSafeArea(.all)
                    
                    
                    //                ZStack{
                    //                    Rectangle()
                    //                        .foregroundColor(Color("bg2"))
                    //                        .frame(width: 400, height: 70)
                    //                        .fixedSize()
                    //                        .padding(.trailing)
                    //                        .padding(.top, 760)
                    //                        .padding(.leading, 10)
                    //
                    //                    HStack{
                    //                        Text("Total Recipes")
                    //                            .fontWeight(.regular)
                    //                            .foregroundColor(Color("bg"))
                    //                            .font(Font.custom("Montserrat", size: 18))
                    //                            .fontWeight(.regular)
                    //                            .padding(.vertical, 10)
                    //                            .padding(.top, 760)
                    //                            .padding(.leading, 0)
                    //
                    //                        Text("8")
                    //                            .fontWeight(.regular)
                    //                            .foregroundColor(Color("bg"))
                    //                            .font(Font.custom("Montserrat", size: 18))
                    //                            .fontWeight(.regular)
                    //                            .padding(.vertical, 10)
                    //                            .padding(.top, 760)
                    //                            .padding(.leading, 0)
                    //
                    //                        Text("Total Authors")
                    //                            .fontWeight(.regular)
                    //                            .foregroundColor(Color("bg"))
                    //                            .font(Font.custom("Montserrat", size: 18))
                    //                            .fontWeight(.regular)
                    //                            .padding(.vertical, 10)
                    //                            .padding(.top, 760)
                    //                            .padding(.leading, 40)
                    //
                    //                        Text("8")
                    //                            .fontWeight(.regular)
                    //                            .foregroundColor(Color("bg"))
                    //                            .font(Font.custom("Montserrat", size: 18))
                    //                            .fontWeight(.regular)
                    //                            .padding(.vertical, 10)
                    //                            .padding(.top, 760)
                    //                            .padding(.leading, 0)
                    //                    } // HStack Bottom rectangle
                    //                } // Zstack bottom rectangle
                    
                    
                    ZStack{
                        Rectangle()
                            .foregroundColor(Color("bg2"))
                            .frame(width: 400, height: 70)
                            .fixedSize()
                            .padding(.top,730)
                        
                        ZStack{
                            Text("Level")
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
                            
                            Text("Serves")
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
                            
                            //                        Text("8")
                            //                            .fontWeight(.regular)
                            //                            .foregroundColor(Color("bg"))
                            //                            .font(Font.custom("Montserrat", size: 18))
                            //                            .fontWeight(.regular)
                            //                            .padding(.vertical, 10)
                            //                            .padding(.top, 760)
                            //                            .padding(.leading, 0)
                            //
                            //                        Text("Total Authors")
                            //                            .fontWeight(.regular)
                            //                            .foregroundColor(Color("bg"))
                            //                            .font(Font.custom("Montserrat", size: 18))
                            //                            .fontWeight(.regular)
                            //                            .padding(.vertical, 10)
                            //                            .padding(.top, 760)
                            //                            .padding(.leading, 40)
                            //
                            //                        Text("8")
                            //                            .fontWeight(.regular)
                            //                            .foregroundColor(Color("bg"))
                            //                            .font(Font.custom("Montserrat", size: 18))
                            //                            .fontWeight(.regular)
                            //                            .padding(.vertical, 10)
                            //                            .padding(.top, 760)
                            //                            .padding(.leading, 0)
                            
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
                                    .fixedSize()
                                    .frame(height:60)
                                    .frame(maxHeight: .infinity)
                                    
                                
                                
                                
                                
                            } //Scrollview
                            
                        }
                        //                    .padding(.top,250)
                        
                        
                        
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
                    //                    .padding(.leading, -50)
                        .padding(.bottom, 600)
                        .padding(.top, -60)
                    
                    HStack {
                        Image(systemName: "clock")
                            .resizable()
                            .frame(width: 20, height: 20)
                            .foregroundColor(.white)
                            .padding(.trailing, 320)
                            .scaledToFill()
                            .padding(.top,-230)
                        
                        Text("\(city.time) min")
                            .foregroundColor(.white)
                            .font(Font.custom("Montserrat", size: 16))
                            .fontWeight(.regular)
                            .padding(.top,-230)
                            .padding(.leading, -310)
                    } //HStack title
                    
                    
                    
                    HStack {
                        
                        
                        Text("By \(city.by)")
                            .foregroundColor(.white)
                            .font(Font.custom("Montserrat", size: 16))
                            .fontWeight(.regular)
                            .padding(.top,-230)
                            .padding(.leading, 240)
                    } //HStack title
                    
                    
                    
                    VStack(alignment: .center){
                        
                        ZStack {
                            //                        Image("back")
                            //                            .resizable()
                            //                            .foregroundColor(.white)
                            //                            .padding(.trailing,70)
                            //                            .scaledToFill()
                            //                            .frame(width: 30, height: 30)
                            //                            .ignoresSafeArea(.all)
                            
                            
                            Text("\(city.name)")
                                .foregroundColor(.white)
                                .font(Font.custom("Gobold CUTS", size: 28))
                                .fontWeight(.regular)
                                .padding(.top, 50)
                        } //HStack title
                        
                        ZStack{
                            Text("About")
                            
                                .font(Font.custom("Montserrat", size: 18))
                                .fontWeight(.bold)
                                .frame(width: 350)
                                .padding(.top, 120)
                                .padding(.leading, -300)
                                .lineSpacing(5)
                            
                            
                            Text("""
                    \(city.about)
                    """)
                            
                            .font(Font.custom("Montserrat", size: 18))
                            .fontWeight(.regular)
                            .frame(width: 350)
                            .padding(.top, 140)
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
                            
                            //                        HStack(spacing: 15){
                            //
                          
                            
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
            
            

//                                                } //temp
//                                            } //ForEach
            
            
            }
        }
//    } //Gemoetry Reader
    
    
} //Scrollview
    

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
