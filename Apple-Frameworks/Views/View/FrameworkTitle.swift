//
//  FrameworkTitle.swift
//  Apple-Frameworks
//
//  Created by Vishnu Priyan Sellam Shanmugavel on 2/17/24.
//

import SwiftUI

struct FrameworkTitle: View{
    var framework: Framework
    var body: some View{
       VStack{
           Image(framework.imageName)
                .resizable()
                .frame(width: 90, height: 90)
           Text(framework.name)
                .font(.title3)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.5)
        }
    }
}

#Preview {
    FrameworkTitle(framework: MockData.sampleFramework)
}
