//
//  ContentView.swift
//  Landmarks
//
//  Created by Arms Chou on 2023/7/17.
//

import SwiftUI

struct ContentView: View {
    @State private var selection: Tab = .features
    
    enum Tab {
        case features
        case list
    }
    
    var body: some View {
        TabView(selection: $selection) {
            CategoryHome()
                .tabItem {
                    Label("Featured", systemImage: "star")
                }
                .tag(Tab.features)
            
            LandmarkList()
                .tabItem {
                    Label("List", systemImage: "list.bullet")
                }
                .tag(Tab.list)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}
