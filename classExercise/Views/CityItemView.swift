//
//  CityItemView.swift
//  classExercise
//
//  Created by Wiaan Duvenhage on 2022/10/14.
//

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
                .frame(width: 450, height: 125, alignment: .center)
//                .padding(.leading, 20)
                .padding()
            
            VStack(alignment: .leading){
                Text(city.name)
                    .font(.title)
                    .foregroundColor(.white)
                
                Text(city.by)
                    .foregroundColor(.white)
//                    .padding(.top,40)
//                    .padding(.leading,160)
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
