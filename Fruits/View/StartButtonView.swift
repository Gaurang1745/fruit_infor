//
//  StartButtonView.swift
//  Fruits
//
//  Created by Gaurang on 3/29/23.
//

import SwiftUI

struct StartButtonView: View {
    @AppStorage ("isOnboarding") var isOnboarding = true

    var body: some View {
        HStack (spacing: 8){
            Button("Start") {
                isOnboarding = false
            }
            .accentColor(.white)
            
            Image(systemName: "arrow.right.circle")
                .imageScale(.large)
                .foregroundColor(.white)
                
        }
        .padding(.horizontal,16)
        .padding(.vertical, 10)
        .background(Capsule().strokeBorder(.white, lineWidth: 1.25))
        .accentColor(.white)
    }
}

struct StartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StartButtonView().previewLayout(.sizeThatFits)
    }
}
