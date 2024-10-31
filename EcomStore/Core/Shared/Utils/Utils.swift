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
