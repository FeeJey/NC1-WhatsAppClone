//
//  ContentView.swift
//  WhatsAppClone
//
//  Created by Firdavs Juraev on 14/11/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "exclamationmark.warninglight")
                .imageScale(.large)
                .foregroundStyle(.tint)
                .foregroundColor(.black)
            Text("Testing!")
                .font(.title)
                .foregroundColor(Color.purple)
                .bold()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
