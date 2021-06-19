//
//  HLiOSApp.swift
//  HLiOS
//
//  Created by Elisabeth Noble on 6/13/21.
//

import SwiftUI

@main
struct HLiOSApp: App {
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
