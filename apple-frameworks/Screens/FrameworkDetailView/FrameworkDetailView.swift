//
//  FrameworkDetailView.swift
//  apple-frameworks
//
//  Created by Andres Rechimon on 19/03/2024.
//

import SwiftUI

struct FrameworkDetailView: View {
    var framework: Framework
    @Binding var isShowingDetailView: Bool
    @State private var isShowingSafariView: Bool = false
    
    var body: some View {
        VStack{
            DismissMarkButton(isShowingDetailView: $isShowingDetailView)
            
            Spacer()
            FrameworkTitleView(framework: framework)
            Text(framework.description)
                .font(.body)
                .padding()
            
            Spacer()
            
            Button{
                isShowingSafariView = true
            } label: {
                AFButton(text: "Learn more")
            }
        }.sheet(isPresented: $isShowingSafariView){
            SafariView(url: URL(string: framework.urlString)!)
        }
    }
}

#Preview {
    FrameworkDetailView(framework: MockData.framework, isShowingDetailView: .constant(false))
}
