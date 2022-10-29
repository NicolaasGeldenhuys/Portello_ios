//  Created by Nicolaas Geldehuys on 2022/10/28.

import SwiftUI

struct OnboardCardView: View {
    
    var onboard: Onboard
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20){
            GeometryReader { geo in
                
                ZStack{
                    
                    Image(onboard.image)
                        .resizable()
                        .scaledToFill()
                        .edgesIgnoringSafeArea(.all)
                        .frame(width: geo.size.width, height: geo.size.height, alignment: .center)
                        .ignoresSafeArea(.all)
                    
                    Text(onboard.title)
                        .fontWeight(.regular)
                        .padding(.top,-80)
                        .padding(.leading,-190)
                        
                        .font(Font.custom("Gobold CUTS", size: 40))
                        .frame(width: 20, height: .infinity,alignment: .leading)
                    
                   
                        
                        Text("""
            \(onboard.description)
            """)
                        
                        .font(Font.custom("Montserrat", size: 22))
                        .fontWeight(.regular)
                        .frame(width: 350)
                        .padding(.top, 150)
                        .padding(.leading,-20)
                        
                        .lineSpacing(5)
                        
//                        .frame(width: 220, height: 150, alignment: .leading)
                    
//                    .border(.white)
                    
                    Spacer()
                    ZStack{
                        //                Circle()
                        //                    .stroke(.white.opacity(0.2), lineWidth: 40)
                        //                    .frame(width: 260, height: 260, alignment: .center)
                        //
                        //                Circle()
                        //                    .stroke(.white.opacity(0.2), lineWidth: 80)
                        //                    .frame(width: 260, height: 260, alignment: .center)
                        
                        Image(systemName: onboard.icon)
                            .renderingMode(.original)
                            .resizable()
                            .scaledToFit()
                            .padding(.top,600)
                    }
                } // outer VStack end
            }
        }
    }//zstack
}//georeader

struct OnboardCardView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardCardView(onboard: OnboardingData[0])
    }
}
