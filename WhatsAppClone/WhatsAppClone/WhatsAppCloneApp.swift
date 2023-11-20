//
//  WhatsAppCloneApp.swift
//  WhatsAppClone
//
//  Created by Firdavs Juraev on 14/11/23.
//

import SwiftUI

@main
struct WhatsAppCloneApp: App {
    @State var selection = 4
    var body: some Scene {
        WindowGroup {
            TabView(selection: $selection) {
                
                UpdatesModelView()
                    .tabItem {
                        Label("Updates", systemImage: "circle.dashed.inset.filled")
                    }.tag(1)
                
                CallsModelView()
                    .tabItem {
                        Label("Calls", systemImage: "phone")
                    }.tag(2)
                
                CommunitiesModelView()
                    .tabItem {
                        Label("Communities", systemImage: "person.3")
                    }.tag(3)
                
                ChatListView()
                    .tabItem {
                        Label("Chats", systemImage: "message")
                    }.tag(4)
                
                SettingsModelView()
                    .tabItem {
                        Label("Settings", systemImage: "gear")
                    }.tag(5)
            }
        }
    }
}

