//
//  SimpleToDoApp.swift
//  SimpleToDo
//
//  Created by Philipp on 30.04.22.
//

import SwiftUI

@main
struct SimpleToDoApp: App {
    @StateObject private var model = ViewModel()
    @Environment(\.scenePhase) var scenePhase

    var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView(model: model)

                SelectSomethingView()
            }
        }
        .onChange(of: scenePhase) { newPhase in
            if newPhase == .background {
                model.save()
            }
        }
    }
}
