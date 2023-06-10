//
//  FruitsApp.swift
//  Fruits
//
//  Created by Gaurang on 3/29/23.
//

import SwiftUI

@main
struct FruitsApp: App {
    
    @AppStorage ("isOnboarding") var isOnboarding = true
    
    var body: some Scene {
        WindowGroup {
            if isOnboarding{
                OnBoardingView()
            }else{
                ContentView()
            }
        }
    }
}
