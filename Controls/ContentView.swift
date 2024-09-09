//
//  ContentView.swift
//  Controls
//
//  Created by Faheeam Ahmed on 09/09/2024.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isOn: Bool = true
    
    var body: some View {
        VStack {
            Toggle(isOn: $isOn, label: {
                Text("Device wifi")
                Text(isOn ? "On": "Off")
            })
            Image(systemName: isOn ? "wifi": "wifi.slash")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text(isOn ? "Connecting...": "Wifi is off")
                .foregroundStyle(isOn ? .black: .gray)
        }
        .padding()
        Spacer()
    }
}

#Preview {
    ContentView()
}
