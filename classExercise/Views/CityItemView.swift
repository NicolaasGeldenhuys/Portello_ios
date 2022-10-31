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
            
            VStack(alignment: .leading){
                Text(city.name)
                    .font(.title)
                    .foregroundColor(.white)
                    .opacity(0.8)

                Text("By \(city.by)")
                    .foregroundColor(.white)
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
