//  Created by Nicolaas Geldehuys on 2022/10/28.

import SwiftUI

struct ForecastCardView: View {
    
    var text: String
    var icon: String
    var value: String
    
    var body: some View {
        HStack{
            
            VStack{
                
                Image(systemName: icon)
                    .resizable()
                    .scaledToFit()
                    .symbolRenderingMode(.multicolor)
                    .frame(width: 30, height: 30)
                
                Text(text)
                    .foregroundColor(.white)
            }
            
            Spacer()
            
            Text(value)
                .foregroundColor(.white)
                .fontWeight(.semibold)
                .font(.system(size: 24))
            
        } //: End of Parent HStack
        .padding()
    }
}

struct ForecastCardView_Previews: PreviewProvider {
    static var previews: some View {
        ForecastCardView(text: "Wind Speed", icon: "wind", value: "34 km/h")
            .background(Color.blue)
    }
}
