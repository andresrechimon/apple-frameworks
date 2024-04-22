//
//  FrameworkViewModel.swift
//  apple-frameworks
//
//  Created by Andres Rechimon on 26/03/2024.
//

import SwiftUI

final class FrameworkViewModel: ObservableObject {
    var selectedFramework: Framework?{
        didSet {
            isShowingDetailView = true
        }
    }
    @Published var isShowingDetailView: Bool = false
    
    let columns: [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible())]

}
