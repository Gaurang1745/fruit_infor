//
//  SettingsView.swift
//  Fruits
//
//  Created by Gaurang on 3/29/23.
//

import SwiftUI

struct SettingsView: View {
    
    @Environment(\.presentationMode) var presentationMode
    @AppStorage ("isOnboarding") var isOnboarding = false
    
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack (spacing: 20){
                    GroupBox {
                        Divider().padding(.vertical, 4)
                        HStack(alignment: .center, spacing: 10) {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                            Text("Most fruits are naturally, low in fat, sodium, and calories. None have cholestrol. Fruits are essential source of many natural nutritions, including potassium, dietary fibers, vitamins, and much more")
                                .font(.footnote)
                        }
                    } label: {
                        SettingsLabelView(labelText: "Fruits", labelImager: "info.circle")
                    }
                    
                    GroupBox {
                        Divider().padding(.vertical, 4)
                        Text("Most fruits are naturally, low in fat, sodium, and calories. None have cholestrol. Fruits are essential source of many natural nutritions, including potassium, dietary fibers, vitamins, and much more")
                            .font(.footnote)
                            .padding(.vertical,8)
                            .frame(minHeight: 60)
                            .layoutPriority(1)
                            .multilineTextAlignment(.leading)
                        
                        Toggle(isOn: $isOnboarding) {
                            if isOnboarding {
                                Text("Restarted".uppercased())
                                    .foregroundColor(.green)
                                    .fontWeight(.bold)
                            } else {
                                Text("Restart".uppercased())
                                    .foregroundColor(.secondary)
                                    .fontWeight(.bold)
                            }
                        }
                        .padding()
                        .background(
                            Color(.tertiarySystemBackground)
                                .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
                        )
                        
                        
                    } label: {
                        SettingsLabelView(labelText: "Customisation", labelImager: "paintbrush")
                    }
                    
                    GroupBox {
                        SettingsRowView(leftText: "Developer", righText: "Gaurang Patel")
                        SettingsRowView(leftText: "Designer", righText: "Gaurang Patel")
                        SettingsRowView(leftText: "Compatability", righText: "iOS 16")
                        SettingsRowView(leftText: "Website", linkLabel: "gaurangpatel", linkDestination: "gaurangpatel.com")
                        SettingsRowView(leftText: "Instagram", linkLabel: "@gaurang_08", linkDestination: "instagram.com/gaurang_08")
                        SettingsRowView(leftText: "SwiftUI", righText: "3.0")
                        SettingsRowView(leftText: "Version", righText: "1.0.0")
                        
                    } label: {
                        SettingsLabelView(labelText: "Application", labelImager: "apps.iphone")
                    }
                    
                }
                .navigationTitle("Settings")
                .toolbar {
                    Button {
                        presentationMode.wrappedValue.dismiss()
                    } label: {
                        Image(systemName: "xmark")
                    }
                }
                .padding()
            }
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
