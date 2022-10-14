//
//  OnboardCardView.swift
//  classExercise
//
//  Created by Wiaan Duvenhage on 2022/10/14.
//

import SwiftUI

struct OnboardCardView: View {
    
    var onboard: Onboard
    
    var body: some View {
        VStack(alignment: .center, spacing: 20){
            Text(onboard.title)
                .fontWeight(.heavy)
            
            Text("""
            \(onboard.description)
            """)
            
            ZStack{
                Circle()
                    .stroke(.white.opacity(0.2), lineWidth: 40)
                    .frame(width: 260, height: 260, alignment: .center)
                
                Circle()
                    .stroke(.white.opacity(0.2), lineWidth: 80)
                    .frame(width: 260, height: 260, alignment: .center)
                
                Image(systemName: onboard.icon)
                    .renderingMode(.original)
                    .resizable()
                    .scaledToFit()
                
            }
        } // outer VStack end
    }
}

struct OnboardCardView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardCardView(onboard: OnboardingData[0])
    }
}
