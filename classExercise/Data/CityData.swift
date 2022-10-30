//  Created by Nicolaas Geldehuys on 2022/10/28.

import SwiftUI

let CityData : [City] = [
    City(name: "Spaghetti Bolognese", by: "By Charlize", icon: "spaghet", image2: "spaghet2", time: "25", about: "Our best ever spaghetti bolognese is super easy and a true italian classic. Meaty and tasty!", ingred: """
         
         
         
         • 1tbsp olive oil
         • 2 medium onions
         • 400g spaghetti
         • 4 rashers of bacon
         • 2 celery sticks
         • 2tbsp tomato puree
         • 800g tomatoes
         • 500g mince
         
         
         
         """),
    
    City(name: "Sushi Classics", by: "By Annatjie", icon: "sushi", image2: "sushi2", time: "40", about: "", ingred: "" ),
    
    City(name: "Hotdog Twists", by: "By Jeanette", icon: "hotdog", image2: "hotdog2", time: "10", about: "", ingred: "" ),
    
    City(name: "Starter Love", by: "By Jennifer", icon: "starter", image2: "starter2", time: "15", about: "", ingred: "" ),
    
    City(name: "The best potatoes", by: "By Connie", icon: "bread", image2: "bread2", time: "45", about: "", ingred: "" ),
    
    City(name: "Dessert for all", by: "By Martin", icon: "dessert", image2: "dessert2", time: "35", about: "", ingred: "" ),
    
]

// MARK: - Onboarding data
let OnboardingData: [Onboard] = [
    Onboard(title: "  Cook", description: "\n\nCook up some amazing recipe ideas. See something you want to do but scared it gets lost in the abyss of your social media archive? \n\nWell that’s why we’re here to help!", icon: "", image: "onboarding1"),
    Onboard(title: "  Plate", description: "Capture your favorite recipes all in one place! Whether it’s a beautifully prepared family recipe or even your own! \n\nWrite it down and get excited!", icon: "", image: "onboarding2"),
    Onboard(title: "  Serve", description: "Finally follow your instructions and get those yummy ingredients ready! \n\nShare with friends and family and enjoy!", icon: "", image: "onboarding3")
]
