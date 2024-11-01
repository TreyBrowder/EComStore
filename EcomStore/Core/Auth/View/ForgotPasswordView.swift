//
//  ForgotPasswordView.swift
//  EcomStore
//
//  Created by Trey Browder on 11/1/24.
//

import SwiftUI

struct ForgotPasswordView: View {
    @Environment(\.dismiss) var dismiss
    var body: some View {
        ZStack {
            Color.green.ignoresSafeArea(.all)
            
            VStack {
                Button {
                    dismiss()
                } label: {
                    Text("NeverMind")
                        .buttonTxtStyle()
                }
            }
        }
    }
}

#Preview {
    ForgotPasswordView()
}
