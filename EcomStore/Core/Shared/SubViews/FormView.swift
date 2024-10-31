//
//  FormView.swift
//  EcomStore
//
//  Created by Trey Browder on 10/31/24.
//

import SwiftUI

struct FormView: View {
    
    @Binding var value: String
    var icon: String
    var placeholder: String
    var isSecure: Bool = false
    var validateState: ValidateState
    
    var body: some View {
        HStack() {
            
            Image(systemName: icon)
                .foregroundStyle(validateState.shadowColor)
                .padding(4)
            
            if isSecure {
                SecureField(placeholder, text: $value)
            } else {
                TextField(placeholder, text: $value)

            }
        }

    }
}

#Preview {
    FormView(value: .constant("Field Text"),
             icon: "",
             placeholder: "Enter Text",
             validateState: .valid)
}
