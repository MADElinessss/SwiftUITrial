//
//  SwiftUITrialApp.swift
//  SwiftUITrial
//
//  Created by Madeline on 4/16/24.
//

import SwiftUI

@main
struct SwiftUITrialApp: App {
    let content = Binding<String>.constant("")
    var body: some Scene {
        WindowGroup {
            return LoginView(content: content)
        }
    }
}
