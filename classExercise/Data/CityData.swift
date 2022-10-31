//  Created by Nicolaas Geldehuys on 2022/10/28.

import SwiftUI

let CityData : [City] = [
    City(name: "Spaghetti Bolognese", by: "Charlize", icon: "spaghet", image2: "spaghet2", time: "25", about: "Our best ever spaghetti bolognese is super easy and a true italian classic. Meaty and tasty!", ingred: """
         
         
         
         • 1tbsp Olive Oil
         • 2 Medium Onions
         • 400g Spaghetti
         • 4 Rashers of Bacon
         • 2 Celery Sticks
         • 2tbsp Tomato Puree
         • 800g Tomatoes
         • 500g Mince
         
         
         
         """, level: "Easy", serves: "6" ),
    
    City(name: "Sushi Classics", by: "Annatjie", icon: "sushi", image2: "sushi2", time: "40", about: "The cultural smashit for every generation. This recipe will astonish.", ingred: """
         
         
         
         • Sushi Rice
         • 2 Medium Cucumbers
         • 2 Medium Salmons
         • 800g Seaweed
         
         
         
         
         
    """, level: "Easy", serves: "1" ),
    
    City(name: "Hotdog Twists", by: "Jeanette", icon: "hotdog", image2: "hotdog2", time: "10", about: "True to its roots, sometimes nothing beats a classy sausage.", ingred: """
         
         
         
         • 1tbsp olive oil
         • 2 medium onions
         • 400g spaghetti
         • 4 rashers of bacon
       
         
         
         
         
    """, level: "Medium", serves: "2" ),
    
    City(name: "Starter Love", by: "Jennifer", icon: "starter", image2: "starter2", time: "15", about: "Never have you been teased with food this great. Starter love anyone?", ingred: """
         
         
         
         • 1tbsp Salt
         • 1 Head Lettuce
         • 200g Polony
         • 600g Bacon
      
         
         
         
         
    """, level: "Easy", serves: "4" ),
    
    City(name: "The best potatoes", by: "Connie", icon: "bread", image2: "bread2", time: "45", about: "Potatoes, easy to make, hard to master. Not with this recipe, learn how to cook like a pro!", ingred: """
         
         
         
         • 5 Large Potatoes
         • 2 medium onions
         • 3 Chive Sticks
         • 2 Cloves Garlic
       
         
         
         
         
    """, level: "Hard", serves: "2" ),
    
    City(name: "Dessert for all", by: "Martin", icon: "dessert", image2: "dessert2", time: "35", about: "Sweetness galore that you have to explore. Please try it out, I implore.", ingred: """
         
         
         
         • 1 Cup Ice Cream
         • 500g Chocolate Goulache
         • 500g Mint Leaves
       
         
         
         
         
    """, level: "Hard", serves: "1" ),
    
]


func filteredByEasy(code: String) -> [City] {
    var cities: [City] = []
    
    if (code == "Easy") {
        cities.append(City(name: "Spaghetti Bolognese", by: "Charlize", icon: "spaghet", image2: "spaghet2", time: "25", about: "Our best ever spaghetti bolognese is super easy and a true italian classic. Meaty and tasty!", ingred: """
         
         
         
         • 1tbsp Olive Oil
         • 2 Medium Onions
         • 400g Spaghetti
         • 4 Rashers of Bacon
         • 2 Celery Sticks
         • 2tbsp Tomato Puree
         • 800g Tomatoes
         • 500g Mince
         
         
         
         """, level: "Easy", serves: "6" ))
                      
        cities.append(City(name: "Sushi Classics", by: "Annatjie", icon: "sushi", image2: "sushi2", time: "40", about: "The cultural smashit for every generation. This recipe will astonish.", ingred: """
         
         
         
         • Sushi Rice
         • 2 Medium Cucumbers
         • 2 Medium Salmons
         • 800g Seaweed
         
         
         
         
         
    """, level: "Easy", serves: "1"  ))
                      
                      cities.append(City(name: "Starter Love", by: "Jennifer", icon: "starter", image2: "starter2", time: "15", about: "Never have you been teased with food this great. Starter love anyone?", ingred: """
         
         
         
         • 1tbsp Salt
         • 1 Head Lettuce
         • 200g Polony
         • 600g Bacon
      
         
         
         
         
    """, level: "Easy", serves: "2"  ))
                      
            
        
        
    } else if (code == "Medium") {
        cities.append(
            City(name: "Hotdog Twists", by: "Jeanette", icon: "hotdog", image2: "hotdog2", time: "10", about: "True to its roots, sometimes nothing beats a classy sausage.", ingred: """
                 
                 
                 
                 • 1tbsp olive oil
                 • 2 medium onions
                 • 400g spaghetti
                 • 4 rashers of bacon
               
                 
                 
                 
                 
            """, level: "Medium", serves: "4"  ))
    } else if (code == "Hard") {
        
        cities.append(City(name: "The best potatoes", by: "Connie", icon: "bread", image2: "bread2", time: "45", about: "Potatoes, easy to make, hard to master. Not with this recipe, learn how to cook like a pro!", ingred: """
         
         
         
         • 5 Large Potatoes
         • 2 medium onions
         • 3 Chive Sticks
         • 2 Cloves Garlic
       
         
         
         
         
    """, level: "Hard", serves: "2"  ))
        
        cities.append(City(name: "Dessert for all", by: "Martin", icon: "dessert", image2: "dessert2", time: "35", about: "Sweetness galore that you have to explore. Please try it out, I implore.", ingred: """
         
         
         
         • 1 Cup Ice Cream
         • 500g Chocolate Goulache
         • 500g Mint Leaves
       
         
         
         
         
    """, level: "Hard", serves: "1" ))
        
    } else {
        cities = CityData
    }
    
    return cities
}


// MARK: - Onboarding data
let OnboardingData: [Onboard] = [
    Onboard(title: "  Cook", description: "\n\nCook up some amazing recipe ideas. See something you want to do but scared it gets lost in the abyss of your social media archive? \n\nWell that’s why we’re here to help!", icon: "", image: "onboarding1"),
    Onboard(title: "  Plate", description: "Capture your favorite recipes all in one place! Whether it’s a beautifully prepared family recipe or even your own! \n\nWrite it down and get excited!", icon: "", image: "onboarding2"),
    Onboard(title: "  Serve", description: "Finally follow your instructions and get those yummy ingredients ready! \n\nShare with friends and family and enjoy!", icon: "", image: "onboarding3")
]
