//
//  AuthViewModel.swift
//  EcomStore
//
//  Created by Trey Browder on 11/1/24.
//

import Foundation
import Observation

@Observable class AuthViewModel {
    
    // Activate login button or not
    var isValidLogin: Bool = false

    var emailValidState: ValidateState = .empty
    var pwdValidState: ValidateState = .empty
    
    var emailLogin = "" {
        didSet {
            emailValidState = emailLogin.isEmpty ? .empty : (isValidEmail(emailLogin) ? .valid : .invalid)
            updateValidLogin()
        }
    }
    
    var passwordLogin = "" {
        didSet {
            pwdValidState = passwordLogin.isEmpty ? .empty : (isValidPwd(passwordLogin) ? .valid : .invalid)
            updateValidLogin()
        }
    }
    
    func updateValidLogin() {
        isValidLogin = emailValidState == .valid && pwdValidState == .valid
    }
    
}
