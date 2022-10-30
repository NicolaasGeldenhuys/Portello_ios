//  Created by Nicolaas Geldehuys on 2022/10/28.

import SwiftUI

struct OnboardingViewScreen: View {
    
    //reference to AppStorage onboarding
    @AppStorage("onboardingComplete") var onboardingComplete = false
    
    @State private var path = NavigationPath()
    
    var onboarding: [Onboard] = OnboardingData
    
    var body: some View {
        
//        WindowGroup{
//            SplashScreenView_()
//        }
        
            ZStack{
                Color("bg2")
                    .ignoresSafeArea(.all)
                
                VStack(){
                    
                    
                    TabView{
                        ForEach(onboarding) { onboard in
                            OnboardCardView(onboard: onboard)
                        }
                        
                    }//tabview
                    
                    
                    
                    .tabViewStyle(.page)
                    //           Spacer()
                    
                  
                    
                    Button(action: {
                        //Set onboarding complete
                        onboardingComplete = true
                        
                        
//                        NavigationStack(path: $path) {
//
//                                        path.append("HomeScreenView")
//                                    }
                            
//                                    .navigationDestination(for: String.self) { view in
//                                        if view == "HomeScreenView" {
//                                            Text("This is NewView")
//                                        }
//                                    }
                                
                        
                    }) {
                        Text("Home")
                            .padding(.top,10)
                            .padding(.bottom,10)
                            .padding(.leading,40)
                            .padding(.trailing,40)
                            .foregroundColor(Color("bg"))
                            .font(Font.custom("Montserrat", size: 18))
                            .fontWeight(.regular)
                            
                            .overlay(
                                RoundedRectangle(cornerRadius: 40).fill(Color("bg")).opacity(0.2)
                                
                                
                                
                                
                            )
                        
                        
                        //                    .padding(.leading,60)
                    }
                    
                }
                .padding(.top,-60)
                
                //        .padding(.leading,-60)
            }
        
    }
}//ZStack
//    }//zstack for image
//}//georeader


struct OnboardingViewScreen_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingViewScreen()
    }
}
