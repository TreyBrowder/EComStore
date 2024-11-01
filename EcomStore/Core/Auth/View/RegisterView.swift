//
//  Register.swift
//  EcomStore
//
//  Created by Trey Browder on 11/1/24.
//

import SwiftUI

struct RegisterView: View {
    @Environment(AuthViewModel.self) var authVM
    
    var body: some View {
        @Bindable var authVmBindable = authVM
        
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    RegisterView()
        .environment(AuthViewModel())
}
