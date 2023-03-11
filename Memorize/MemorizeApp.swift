//
//  MemorizeApp.swift
//  Memorize
//
//  Created by Primo Jay Pan on 2023/3/4.
//

import SwiftUI

@main
struct MemorizeApp: App {
    let game = ViewModel();
    var body: some Scene {
        WindowGroup {
            ContentView(vm: game)
        }
    }
}
