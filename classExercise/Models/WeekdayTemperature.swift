//  Created by Nicolaas Geldehuys on 2022/10/28.

import SwiftUI

struct WeekdayTemperature: Identifiable, Hashable{
    var id = UUID()
    var dayOfWeek: String
    var imageName: String
    var temperature: Int
}
