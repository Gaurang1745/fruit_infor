//
//  SettingsLabelView.swift
//  Fruits
//
//  Created by Gaurang on 3/29/23.
//

import SwiftUI

struct SettingsLabelView: View {
    var labelText : String
    var labelImager : String
    
    var body: some View {
        HStack {
            Text(labelText.uppercased()).fontWeight(.bold)
            Spacer()
            Image(systemName: labelImager)
        }
    }
}

struct SettingsLabelView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsLabelView(labelText: "Fruits", labelImager: "info.circle")
            .previewLayout(.sizeThatFits).padding()
    }
}
