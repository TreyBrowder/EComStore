//
//  Utils.swift
//  EcomStore
//
//  Created by Trey Browder on 10/31/24.
//

import Foundation
import SwiftUI

enum ValidateState {
    case valid
    case invalid
    case empty
    
    var shadowColor: Color {
        switch self {
        case .valid:
            return .green
        case .invalid:
            return .orange
        case .empty:
            return .gray.opacity(0.35)
        }
    }
}

func isValidEmail(_ email: String) -> Bool {
    let emailRegex = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
    return (email.range(of: emailRegex, options: .regularExpression) != nil)
}

func isValidPwd(_ pwd: String) -> Bool {
    ///Password Regex to make password have 1 uppercase 1 lowercase 1 number and 8 characters long
//    let pwdRegex = "(?=.*[A-Z])(?=.*[0-9])(?=.*[a-z]).{8,}"
    
    return !pwd.isEmpty
    && pwd.count > 6
}
