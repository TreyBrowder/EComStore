//
//  ContentView.swift
//  EcomStore
//
//  Created by Trey Browder on 10/31/24.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        VStack {
            Image(systemName: "person.circle.fill")
                .resizable()
                .frame(width: 42, height: 42)
                .foregroundStyle(.tint)
            
            Text("Main Tab View Home Screen!")
        }
        .padding()
    }
}

#Preview {
    MainTabView()
}
