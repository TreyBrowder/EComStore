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
                             validateState: authVmBindable.emailValidState)
                    
                    FormView(value: $authVmBindable.passwordLogin,
                             icon: "lock.circle",
                             placeholder: "Password",
                             isSecure: true,
                             validateState: authVmBindable.pwdValidState)
                    
                    Button {
                        //Calls to backend
                        print("Login Button Tapped")
                    } label: {
                        Text("Login")
                            .buttonTxtStyle()
                    }
                    .disabled(authVmBindable.isValidLogin ? false : true)
                    
                    NavigationLink {
                        ForgotPasswordView()
                            .navigationBarBackButtonHidden()
                    } label: {
                        NavLinkView(text: "Forgot", subText: "Password")
                    }

                }
                .padding(.horizontal, 18)
            }
        }
    }
}

#Preview {
    LoginView()
        .environment(AuthViewModel())
}


struct ButtonTxtStyle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .frame(minWidth: 0, maxWidth: .infinity)
            .frame(height: 20)
            .padding()
            .foregroundStyle(.white)
            .font(.system(size: 24))
            .fontWeight(.heavy)
            .background(Color.cyan)
            .cornerRadius(10)
    }
}

extension View {
    public func buttonTxtStyle() -> some View {
        self.modifier(ButtonTxtStyle())
    }
}
