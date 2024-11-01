//
//  LoginView.swift
//  EcomStore
//
//  Created by Trey Browder on 11/1/24.
//

import SwiftUI

struct LoginView: View {
    @Environment(AuthViewModel.self) var authVM
    
    var body: some View {
        @Bindable var authVmBindable = authVM
        
        NavigationStack(){
            VStack(spacing: 8) {
                Image(systemName: "checkmark.circle")
                    .resizable()
                    .frame(width: 42, height: 42)
                    .foregroundStyle(.orange)
                
                Text("Login Screen!")
                
                Group {
                    FormView(value: $authVmBindable.emailLogin,
                             icon: "envelope.circle",
                             placeholder: "Email",
                             validateState: authVM.emailValidState)
                    
                    FormView(value: $authVmBindable.passwordLogin,
                             icon: "lock.circle",
                             placeholder: "Password",
                             isSecure: true,
                             validateState: authVM.pwdValidState)
                }
                .padding(.horizontal, 8)
                
            }
        }
    }
}

//#Preview {
//    LoginView()
//}
