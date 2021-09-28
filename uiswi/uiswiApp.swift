//
//  uiswiApp.swift
//  uiswi
//
//  Created by 홍태희 on 2021/09/25.
//

import SwiftUI

@main
struct uiswiApp: App {
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
