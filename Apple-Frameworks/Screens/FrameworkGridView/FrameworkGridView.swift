//
//  FrameworkGridView.swift
//  Apple-Frameworks
//
//  Created by Vishnu Priyan Sellam Shanmugavel on 2/17/24.
//

import SwiftUI

struct FrameworkGridView: View {
    @StateObject var viewModel = FramworkGridViewModel()
    var body: some View {
        NavigationView{
            ScrollView(content: {
                LazyVGrid(columns: viewModel.columns, content: {
                    ForEach(MockData.frameworks, content:
                                { framework in FrameworkTitle(framework: framework)
                            .onTapGesture {
                                viewModel.selectedFrameWork = framework
                            }
                    })
                })
            })
            .navigationTitle("🍎 Frameworks")
            .sheet(isPresented: $viewModel.isShowingDetailView, content: {
                FrameworkDetailView(framework: viewModel.selectedFrameWork ?? MockData.errorFrameWork, isShowingDetailView: $viewModel.isShowingDetailView)
            })
        }
    }
}

#Preview {
    FrameworkGridView()
        .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
}

