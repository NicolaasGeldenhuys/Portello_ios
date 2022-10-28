//
//  OnboardingViewScreen.swift
//  classExercise
//
//  Created by Nicolaas Geldenhuys on 2022/10/25.
//

import SwiftUI

struct OnboardingViewScreen: View {
    
    //reference to AppStorage onboarding
    @AppStorage("onboardingComplete") var onboardingComplete = false
    
    var onboarding: [Onboard] = OnboardingData
    
    var body: some View {
        
        
        GeometryReader { geo in
            ZStack{
                Image("onboarding1")
                    .resizable()
                    .scaledToFill()
                    .edgesIgnoringSafeArea(.all)
                    .frame(width: geo.size.width, height: geo.size.height, alignment: .center)
                
          
        
        
//        Image("onboarding1")
//            .resizable()
        VStack(){
            
            TabView{
                ForEach(onboarding) { onboard in
                    OnboardCardView(onboard: onboard)
                }
            }
            .tabViewStyle(.page)
            Spacer()
            Button(action: {
                //Set onboarding complete
                onboardingComplete = true
            }) {
                Text("Get Started")
                    
            }
        }
        .padding(0.0)
    }
}
        
    }//zstack for image
}//georeader

struct OnboardingViewScreen_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingViewScreen()
    }
}
