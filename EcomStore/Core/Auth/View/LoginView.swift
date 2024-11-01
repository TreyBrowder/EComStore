//
//  LoginView.swift
//  EcomStore
//
//  Created by Trey Browder on 11/1/24.
//

import SwiftUI

struct LoginView: View {
    var body: some View {
        VStack {
            Image(systemName: "checkmark.circle")
                .resizable()
                .frame(width: 42, height: 42)
                .foregroundStyle(.orange)
            
            Text("Login Screen!")
        }
    }
}

#Preview {
    LoginView()
}
