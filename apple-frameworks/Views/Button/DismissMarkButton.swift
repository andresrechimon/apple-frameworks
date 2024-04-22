//
//  DismissMarkButton.swift
//  apple-frameworks
//
//  Created by Andres Rechimon on 26/03/2024.
//

import SwiftUI

struct DismissMarkButton: View {
    @Binding var isShowingDetailView: Bool
    
    var body: some View {
        HStack{
            Spacer()
            Button{
                isShowingDetailView = false
            } label: {
                Image(systemName: "xmark")
                    .foregroundColor(Color(.label))
                    .imageScale(.large)
                    .frame(width: 44, height: 44)
            }
            .padding()
        }
    }
}

#Preview {
    DismissMarkButton(isShowingDetailView: .constant(false))
}
