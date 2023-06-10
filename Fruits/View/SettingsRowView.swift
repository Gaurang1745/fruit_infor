//
//  SettingsRowView.swift
//  Fruits
//
//  Created by Gaurang on 3/29/23.
//

import SwiftUI

struct SettingsRowView: View {
    var leftText :String
    var righText : String? = nil
    var linkLabel : String? = nil
    var linkDestination : String? = nil
    var body: some View {
        VStack {
            Divider()
                .padding(.vertical,4)
            HStack {
                
                Text(leftText)
                    .foregroundColor(.gray)
                Spacer()
                if (righText != nil){
                    Text(righText!)
                }else if (linkLabel != nil && linkDestination != nil) {
                    Link(linkLabel!, destination: URL(string: "https://\(linkDestination!)")!)
                    Image(systemName: "arrow.up.right.square")
                        .foregroundColor(.pink)
                }else{
                    EmptyView()
                }
            }
        }
    }
}

struct SettingsRowView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsRowView(leftText: "Developer", righText: "Gaurang Kachhia")
            .previewLayout(.sizeThatFits).padding()
    }
}
