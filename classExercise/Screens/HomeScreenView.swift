//  Created by Nicolaas Geldehuys on 2022/10/28.

import SwiftUI

struct HomeScreenView: View {
    
    // MARK: - Properties
    var cities: [City] = CityData
    
    @State var showSheet: Bool = false
    
    var body: some View {
        
        ZStack{
            Color("bg2")
                .ignoresSafeArea(.all)
            
            ZStack{
                
                
                
                
                
                // Creating a list
                NavigationView{
                    
                    
                    
                    List(cities) {city in
                        // Example of navigationLink
                        NavigationLink(destination: ContentView()){
                            

                            CityItemView(city: city)
                                .navigationBarBackButtonHidden(true)
                        }
                        .padding()
                        .listStyle(PlainListStyle())
                       
                        //NavigationView Modifiers
                        .navigationTitle("")
                        .toolbar {
                            
                            ToolbarItem(placement: .principal) {
                                
                                
                                HStack {
                                    Text("Portello")
                                    
                                        .foregroundColor(Color("bg"))
                                        .font(Font.custom("Gobold CUTS", size: 36))
                                        .fontWeight(.regular)
                                        .padding(.vertical, 10)
                                        .padding(.leading, -170)
                                        .padding(.bottom, 10)
                                }
                            }
                            
                        }
                        
                        
                        
                        
                        
                        
                        
//                        Settings
                        .navigationBarItems(trailing:
                                                Button(action: {print("Settings")
                            showSheet.toggle()
                        }){
                            //Sheet Navigation
                            
                            Image(systemName: "magnifyingglass")
                                .renderingMode(.original)
                                .foregroundColor(Color("bg"))
                                .frame(width: 30, height: 30)
                                .padding(.bottom, 10)
                            
                            Image(systemName: "gearshape")
                                .renderingMode(.original)
                                .foregroundColor(Color("bg"))
                                .frame(width: 30, height: 30)
                                .padding(.bottom, 10)
                            
                            
                        }.sheet(isPresented: $showSheet){
                            SettingsViewScreen()
                            
                        }
                        )
                        
                    } //navigation view
                    
                }
                
                //                ZStack(alignment: .leading){
                //
                //                    Text("My Library")
                //                        .foregroundColor(Color("bg"))
                //                        .font(Font.custom("Gobold CUTS", size: 28))
                //                        .fontWeight(.regular)
                //                        .padding(.top, -330)
                //                        .padding(.leading, -170)
                //                }
                
                ZStack{
                    Rectangle()
                        .foregroundColor(Color("bg2"))
                        .frame(width: 400, height: 70)
                        .fixedSize()
                        .padding(.trailing)
                        .padding(.top, 760)
                        .padding(.leading, 10)
                    
                    HStack{
                        Text("Total Recipes")
                            .fontWeight(.regular)
                            .foregroundColor(Color("bg"))
                            .font(Font.custom("Montserrat", size: 18))
                            .fontWeight(.regular)
                            .padding(.vertical, 10)
                            .padding(.top, 760)
                            .padding(.leading, 0)
                        
                        Text("8")
                            .fontWeight(.regular)
                            .foregroundColor(Color("bg"))
                            .font(Font.custom("Montserrat", size: 18))
                            .fontWeight(.regular)
                            .padding(.vertical, 10)
                            .padding(.top, 760)
                            .padding(.leading, 0)
                        
                        Text("Total Authors")
                            .fontWeight(.regular)
                            .foregroundColor(Color("bg"))
                            .font(Font.custom("Montserrat", size: 18))
                            .fontWeight(.regular)
                            .padding(.vertical, 10)
                            .padding(.top, 760)
                            .padding(.leading, 40)
                        
                        Text("8")
                            .fontWeight(.regular)
                            .foregroundColor(Color("bg"))
                            .font(Font.custom("Montserrat", size: 18))
                            .fontWeight(.regular)
                            .padding(.vertical, 10)
                            .padding(.top, 760)
                            .padding(.leading, 0)
                    } // HStack Bottom rectangle
                } // Zstack bottom rectangle
                
                
            }//Zstack
        
        
        }
        
    }
        
}
    


struct HomeScreenView_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreenView()
    }
}
