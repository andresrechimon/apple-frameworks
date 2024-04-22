//
//  apple_frameworksApp.swift
//  apple-frameworks
//
//  Created by Andres Rechimon on 16/03/2024.
//

import SwiftUI

@main
struct apple_frameworksApp: App {
    var body: some Scene {
        WindowGroup {
            FrameworkGridView().preferredColorScheme(.dark)
        }
    }
}
