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
            TabView{
            ZStack{
                Image("onboarding1")
                    .resizable()
                    .scaledToFill()
                    .edgesIgnoringSafeArea(.all)
                    .frame(width: geo.size.width, height: geo.size.height, alignment: .center)
                
          
        
        
//        Image("onboarding1")
//            .resizable()
        VStack(){
            
            
                
                ForEach(onboarding) { onboard in
                    OnboardCardView(onboard: onboard)
                    
                }
                
            
            .tabViewStyle(.page)
           Spacer()
            
            Button(action: {
                //Set onboarding complete
                onboardingComplete = true
            }) {
                Text("Get Started")
                    .accentColor(.red)
            }
            
        }
        .padding(.bottom,-180)
        .padding(.leading,-60)
                
    }
}
        
    }//zstack for image
}//georeader
}//tabview
struct OnboardingViewScreen_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingViewScreen()
    }
}
