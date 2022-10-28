//
//  CityData.swift
//  classExercise
//
//  Created by Wiaan Duvenhage on 2022/10/14.
//

import SwiftUI

let CityData : [City] = [
    City(name: "Southdowns", code: "PTA", icon: "cloud.fill", wind: "34 km/h", humidity: "20%", weather: [
        WeekdayTemperature(dayOfWeek: "MON", imageName: "cloud.fill", temperature: 19),
        WeekdayTemperature(dayOfWeek: "TUE", imageName: "cloud.sun.fill", temperature: 25)
    ]),
    City(name: "Midrand", code: "JHB", icon: "cloud.fill", wind: "25 km/h", humidity: "60%", weather: [
        WeekdayTemperature(dayOfWeek: "MON", imageName: "cloud.fill", temperature: 19),
        WeekdayTemperature(dayOfWeek: "TUE", imageName: "cloud.sun.fill", temperature: 25)
    ]),
    City(name: "Midrand", code: "JHB", icon: "cloud.fill", wind: "25 km/h", humidity: "60%", weather: [
        WeekdayTemperature(dayOfWeek: "MON", imageName: "cloud.fill", temperature: 19),
        WeekdayTemperature(dayOfWeek: "TUE", imageName: "cloud.sun.fill", temperature: 25)
    ]),
    City(name: "Midrand", code: "JHB", icon: "cloud.fill", wind: "25 km/h", humidity: "60%", weather: [
        WeekdayTemperature(dayOfWeek: "MON", imageName: "cloud.fill", temperature: 19),
        WeekdayTemperature(dayOfWeek: "TUE", imageName: "cloud.sun.fill", temperature: 25)
    ]),
    City(name: "Midrand", code: "JHB", icon: "cloud.fill", wind: "25 km/h", humidity: "60%", weather: [
        WeekdayTemperature(dayOfWeek: "MON", imageName: "cloud.fill", temperature: 19),
        WeekdayTemperature(dayOfWeek: "TUE", imageName: "cloud.sun.fill", temperature: 25)
    ]),
    City(name: "Midrand", code: "JHB", icon: "cloud.fill", wind: "25 km/h", humidity: "60%", weather: [
        WeekdayTemperature(dayOfWeek: "MON", imageName: "cloud.fill", temperature: 19),
        WeekdayTemperature(dayOfWeek: "TUE", imageName: "cloud.sun.fill", temperature: 25)
    ]),
    City(name: "Midrand", code: "JHB", icon: "cloud.fill", wind: "25 km/h", humidity: "60%", weather: [
        WeekdayTemperature(dayOfWeek: "MON", imageName: "cloud.fill", temperature: 19),
        WeekdayTemperature(dayOfWeek: "TUE", imageName: "cloud.sun.fill", temperature: 25)
    ]),
]

// MARK: - Onboarding data
let OnboardingData: [Onboard] = [
    Onboard(title: "Cook", description: "Cook up some amazing recipe ideas.", ),
    Onboard(title: "Plate", description: "Click on buttons to view individually", icon: "globe.europe.africa.fill"),
    Onboard(title: "Serve", description: "View specific details about the weather liek humidity and wind speed", icon: "humidity")
]
