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
                .cornerRadius(-150)
                .frame(width: 385, height: 135, alignment: .center)
//                .padding(.leading, 20)
                .padding()
            
            VStack(alignment: .leading){
                Text(city.name)
                    .font(.title)
                    .foregroundColor(.white)
                    .opacity(0.8)
                
                Text(city.by)
                    .foregroundColor(.white)
//                    .padding(.top,40)
//                    .padding(.leading,160)
                    .opacity(0.6)
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
