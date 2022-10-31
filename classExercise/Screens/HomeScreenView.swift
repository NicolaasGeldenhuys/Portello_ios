//  Created by Nicolaas Geldehuys on 2022/10/28.

import SwiftUI

struct HomeScreenView: View {
    
    //Properties
    @State var cities: [City] = CityData
    
    @State var showSheet: Bool = false
    
    @State var easy : String = ""
    
    var filteredCities: [City]   {
        if  (searchText.isEmpty) {
             return CityData
        } else {
            return CityData.filter { $0.name.contains(searchText) } //filtereing data through search
        }
    }
    
    var filteredAuthors: [City]   {
        if  (searchText.isEmpty) {
             return CityData
        } else {
            return CityData.filter { $0.by.contains(searchText) } //filtereing data through search
        }
    }

    @State var searchText: String = ""
    var body: some View {

            // Creating a list
            NavigationView{
            ZStack{
                Color("bg2")
                    .ignoresSafeArea(.all)
                List(searchText.isEmpty ? cities : filteredCities) {city in
                        // Example of navigationLink
                        NavigationLink(destination: ContentView()){
                            CityItemView(city: city)
                        } 
             
//                        Settings
                        .navigationBarItems(trailing:
                        Button(action: {print("Settings")
                        showSheet.toggle()
                        }){ 

                        Image(systemName: "gearshape")
                        .renderingMode(.original)
                        .foregroundColor(Color("bg"))
                        .frame(width: 30, height: 30)
                        .padding(.bottom, 10)
                            
                        }.sheet(isPresented: $showSheet){
                            SettingsViewScreen()
                        }
                    ) //Navigation Bar Items
                        
                        ZStack{
                            Text("")
                                .navigationBarTitleDisplayMode(.inline)
                            
//                                .padding(.bottom, -50)
                                .toolbar { // <2>
                                    ToolbarItem(placement: .principal) { // <3>
                                        VStack {
                                            Text("Portello")
                                                .foregroundColor(Color("bg"))
                                                .font(Font.custom("Gobold CUTS", size: 36))
                                                .fontWeight(.regular)
                                                .padding(.vertical, 10)
                                                .padding(.leading, -170)
                                                .padding(.bottom, 10)
                                                
                                        }
                                    }
                } //toolbar
                } //ZStack navigationbartitledisplaymode
                } //List
                .padding(.top, 50)
                .listStyle(SidebarListStyle())
                .cornerRadius(40)
                .listRowSeparator(.hidden)
                
                Picker("Mode", selection: $easy) {
                    Text("Easy").tag(false)
                        .onTapGesture {
                            self.cities = filteredByEasy(code: "Easy")
                        }
                    Text("Medium").tag(false)
                        .onTapGesture {
                            self.cities = filteredByEasy(code: "Medium")
                        }
                    Text("Hard").tag(false)
                        
                        .onTapGesture {
                            self.cities = filteredByEasy(code: "Hard")
                        }
                }
                .pickerStyle(SegmentedPickerStyle())
                .padding(.top, -330)
                .padding(.leading, -40)
                .padding(.trailing, -40)
                .frame(minWidth: 200,maxWidth: 280)
                .padding(.bottom,5)
                
                Spacer()
            }
            }
            .searchable(text: $searchText)
    } // Navigation View
} // Body

//Bottom Bar - Left out for efficiency.
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
                
struct HomeScreenView_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreenView()
    }
}
