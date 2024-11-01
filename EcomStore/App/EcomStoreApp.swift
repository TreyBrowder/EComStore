//
//  EcomStoreApp.swift
//  EcomStore
//
//  Created by Trey Browder on 10/31/24.
//

import SwiftUI

@main
struct EcomStoreApp: App {
   @State var authVM = AuthViewModel()
    
    var body: some Scene {
        WindowGroup {
            Group {
                if true {
                    LoginView()
                } else {
                    MainTabView()
                }
            }
            .environment(authVM)
        }
    }
}
