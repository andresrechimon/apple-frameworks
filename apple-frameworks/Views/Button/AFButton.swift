//
//  AFButton.swift
//  apple-frameworks
//
//  Created by Andres Rechimon on 19/03/2024.
//

import SwiftUI

struct AFButton: View {
    var text: String
    
    var body: some View {
        Text(text)
            .font(.title2)
            .fontWeight(.semibold)
            .frame(width: 200, height: 50)
            .background(.red)
            .foregroundColor(.white)
            .cornerRadius(10)
    }
}

#Preview {
    AFButton(text: "Test title")
}
