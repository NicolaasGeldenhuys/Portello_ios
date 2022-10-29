//
//  SettingsViewScreen.swift
//
//  Created by Nicolaas Geldehuys on 2022/10/28.
//

import SwiftUI

struct SettingsViewScreen: View {
    
    @State var showAbout: Bool = false
    @State var showName: Bool = false
    @State var showVersion: Bool = false
    
    //Get the iPhone's dark mode settings
    //    @Environment(\.colorScheme) var colorScheme
    
    @AppStorage("isDarkMode") var isDarkMode = false
    
    var body: some View {
        GeometryReader { geo in
            
            ZStack{
                
                Image("settings")
                    .resizable()
                    .scaledToFill()
                    .edgesIgnoringSafeArea(.all)
                    .frame(width: geo.size.width, height: geo.size.height, alignment: .center)
                    .ignoresSafeArea(.all)
                    
                
                
                ZStack{
                    Color("bg2")
                        .ignoresSafeArea(.all)
                    
                    VStack(alignment: .leading,spacing: 10){
                        //OPTIONAL: Add a dismiss button
                        Text("Settings")
                            .foregroundColor(Color("bg"))
                            .font(Font.custom("Gobold CUTS", size: 40))
                            .fontWeight(.regular)
                            .padding(.vertical, 10)
                        
                        
                        Divider()
                        
                        //              Name
                        GroupBox{
                            
                            DisclosureGroup("Name", isExpanded: $showName){
                                Text("""
                    Portello - A necessity for food recipes.
                    
                    """)
                                .multilineTextAlignment(.center)
                                .font(Font.custom("Montserrat", size: 16))
                                .fontWeight(.regular)
                                .padding(.top, 20)
                                
                            }
                            
                        }
                        
                        
                        
                        //              Version
                        GroupBox{
                            
                            DisclosureGroup("Version", isExpanded: $showVersion){
                                Text("""
                                    v1.0.0
                                    
                                    """)
                                .multilineTextAlignment(.trailing)
                                .font(Font.custom("Montserrat", size: 16))
                                .fontWeight(.regular)
                                .padding(.top, 20)
                            }
                            
                        }
                        
                        
                        
                        //                App description
                        
                        GroupBox{
                            
                            DisclosureGroup("Description", isExpanded: $showAbout){
                                Text("""
                    Portello is the ultimate recipe library.
                    Capture and write down any and all
                    interesting recipes in an instant.
                    """)
                                .multilineTextAlignment(.leading)
                                .font(Font.custom("Montserrat", size: 16))
                                .fontWeight(.regular)
                                .padding(.vertical, 10)
                            }
                            
                        }
                        
                        
                        //                Source Code
                        
                        GroupBox{
                            HStack{
                                
                                Text("Github Repository")
                                Spacer()
                                Link("Github", destination: URL(string: "https://github.com/NicolaasGeldenhuys/iOS204_Week5")!)
                                Image(systemName: "arrow.up.right.square")
                                
                            }
                        }
                        
                        
                        
                        Divider()
                        
                        Picker("Mode", selection: $isDarkMode) {
                            Text("Light Mode").tag(false)
                            Text("Dark Mode").tag(true)
                            
                        }
                        .pickerStyle(SegmentedPickerStyle())
                        //                .cornerRadius(50)
                        Spacer()
                    }
                    .padding()
                    
                    
                    //        .onAppear(perform: {
                    //            colorScheme == .dark ? isDarkMode = true
                    //        })
                    
                }
            }
        }//Zstack
        
    }//ZStack
}//Geometry Reader
        
struct SettingsViewScreen_Previews: PreviewProvider {
    static var previews: some View {
        SettingsViewScreen()
    }
}
