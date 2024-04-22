//
//  FrameworkGridView.swift
//  apple-frameworks
//
//  Created by Andres Rechimon on 16/03/2024.
//

import SwiftUI

struct FrameworkGridView: View {
    @StateObject var viewModel = FrameworkViewModel()
    
    var body: some View {
        NavigationView{
            ScrollView{
                LazyVGrid(columns: viewModel.columns){
                    ForEach(MockData.frameworks){ framework in
                        FrameworkTitleView(framework: framework)
                            .onTapGesture {
                                viewModel.selectedFramework = framework
                            }
                    }
                }.navigationTitle("Applications")
            }
        }.sheet(isPresented: $viewModel.isShowingDetailView){
            FrameworkDetailView(framework: viewModel.selectedFramework!, isShowingDetailView: $viewModel.isShowingDetailView)
        }
    }
}

#Preview {
    FrameworkGridView()
}
