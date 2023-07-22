//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Arms Chou on 2023/7/17.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @StateObject private var modelData = ModelData()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
