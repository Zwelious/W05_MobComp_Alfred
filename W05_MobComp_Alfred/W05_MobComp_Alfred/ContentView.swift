//
//  ContentView.swift
//  W05_MobComp_Alfred
//
//  Created by student on 18/10/24.
//

import SwiftUI

struct ContentView: View {
    @State private var randomFlag = "🏳️‍🌈"
    let flagSelection = ["🏳️‍🌈", "🇧🇷", "🇨🇦", "🇩🇪", "🇪🇸", "🇫🇷", "🇮🇹", "🇯🇵", "🇰🇷", "🇲🇽", "🇳🇱", "🇵🇹", "🇷🇺", "🇸🇪", "🇿🇦", "🇾🇪", "🇺🇸", "🇬🇧", "🇹🇷", "🇹🇭"]
    
    var body: some View {
        Section{
            Text(randomFlag)
                .font(.system(size: 250))
                .padding()
            Button(action: {
                randomFlag = flagSelection.randomElement() ?? "🏳️‍🌈"
            }) {
                Text("Go!")
                    .padding()
                    .background(Color.yellow)
                    .cornerRadius(15)
            }
        }
    }
}

#Preview {
    ContentView()
}

