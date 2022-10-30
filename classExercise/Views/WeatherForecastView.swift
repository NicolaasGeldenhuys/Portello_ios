//  Created by Nicolaas Geldehuys on 2022/10/28.


import SwiftUI

struct WeatherForecastView: View {
    
    // MARK: - Properties
    var dayOfWeek: String
    var imageName: String
    var temperature: Int
    
    // MARK: - Body
    
    var body: some View {
        
        VStack(spacing: 5){
            
//            Image(systemName: imageName)
//                .symbolRenderingMode(.multicolor)
//                .resizable()
//                .aspectRatio(contentMode: .fit)
//                .frame(width: 30, height: 30, alignment: .center)
            
            Text("\(temperature)º")
                .foregroundColor(.white)
            
            Text(dayOfWeek)
                .foregroundColor(.white)
        }
        
    }
}

struct WeatherForecastView_Previews: PreviewProvider {
    static var previews: some View {
        WeatherForecastView(dayOfWeek: "THU", imageName: "cloud.fill.sun", temperature: 23)
    }
}
