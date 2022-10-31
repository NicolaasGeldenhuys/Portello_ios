//  Created by Nicolaas Geldehuys on 2022/10/28.
import SwiftUI

struct SplashScreenView_: View {
    @State private var isActive = false
 
    var body: some View {
        if isActive {
            OnboardingViewScreen()
        } else {
            VStack{
                VStack{
                    
                    GeometryReader { geo in
                        ZStack{
                            Image("SplashScreen")
                                .resizable()
                                .scaledToFill()
                                .edgesIgnoringSafeArea(.all)
                                .frame(width: geo.size.width, height: geo.size.height, alignment: .center)
                                .ignoresSafeArea(.all)
                                .padding(.top,46)
                        }//ZStack
                    }//Georeader
                    .onAppear {
                        withAnimation(.easeIn(duration: 1.2)) {
                }
                    }
                }//VStack1
                
                .onAppear {
                    DispatchQueue.main.asyncAfter(deadline: .now() +  2.0) {
                        withAnimation{
                            self.isActive = true
                        }
                    }
                }
            }//VStack2
        }
    }
}

struct SplashScreenView__Previews: PreviewProvider {
    static var previews: some View {
        SplashScreenView_()
    }
}
