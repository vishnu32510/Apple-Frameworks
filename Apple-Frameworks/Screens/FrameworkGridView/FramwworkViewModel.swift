//
//  FramwworkViewModel.swift
//  Apple-Frameworks
//
//  Created by Vishnu Priyan Sellam Shanmugavel on 2/17/24.
//

import SwiftUI

final class FramworkGridViewModel: ObservableObject{
    var selectedFrameWork: Framework? {
        didSet{
            isShowingDetailView = true
        }
    }
    @Published var isShowingDetailView = false
    
    var columns: [GridItem] = [GridItem(.flexible()),GridItem(.flexible()),GridItem(.flexible())]

}
