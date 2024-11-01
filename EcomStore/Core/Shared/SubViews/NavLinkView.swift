//
//  NavLinkView.swift
//  EcomStore
//
//  Created by Trey Browder on 11/1/24.
//

import SwiftUI

struct NavLinkView: View {
    
    var text: String
    var subText: String
    var body: some View {
        
        HStack {
            Text(text)
            
            Text(subText)
                .font(.system(size: 16))
                .fontWeight(.bold)
        }
        .foregroundStyle(.primary)
    }
}

#Preview {
    VStack(alignment: .leading){
        NavLinkView(text: "Forgot", subText: "Password")
        NavLinkView(text: "Reset", subText: "Password")
    }
}
