//  Created by Nicolaas Geldehuys on 2022/10/28.

import SwiftUI

struct CityItemView: View {
    // if var is not equal to anything, it behaves as a property
    var city: City
    
    var body: some View {
        ZStack(alignment: .center){
            
                
            
            
            Image(city.icon)
                .renderingMode(.original)
                .resizable()
                .scaledToFill()
                .cornerRadius(40)
                .frame(width: 440, height: 180, alignment: .center)
//                .frame(minWidth: 385, maxWidth: 385, minHeight: 135,maxHeight: 135)
                
//                .padding(.leading, 20)
//                .padding()
            
            VStack(alignment: .leading){
                Text(city.name)
                    .font(.title)
                    .foregroundColor(.white)
                    .opacity(0.8)
//                    .frame(minWidth: 385, maxWidth: 385, minHeight: 135,maxHeight: 135)
                    
                
                
                Text("By \(city.by)")
                    .foregroundColor(.white)
//                    .padding(.top,40)
//                    .padding(.leading,240)
//                    .padding(.bottom, -80)
                    .opacity(0.6)
//                    .frame(minWidth: 385, maxWidth: 385, minHeight: 135,maxHeight: 135)
                    
            }
        }
    }
    
    struct CityItemView_Previews: PreviewProvider {
        static var previews: some View {
            CityItemView(city: CityData[2])
                .background()
        }
    }
}
