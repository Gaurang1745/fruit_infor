//
//  OnBoardingView.swift
//  Fruits
//
//  Created by Gaurang on 3/29/23.
//

import SwiftUI

struct OnBoardingView: View {
    var fruits = fruitsData
    var body: some View {
        TabView{
            ForEach(fruits[0...5]){item in
                FruitCardView(fruit: item)
            }
        }
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical,20)
    }
}

struct OnBoardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardingView()
    }
}
