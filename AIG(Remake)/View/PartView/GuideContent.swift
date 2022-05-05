//
//  GuideContent.swift
//  AIG(Remake)
//
//  Created by 민채호 on 2022/05/05.
//

import SwiftUI

struct GuideContent<Content: View>: View {
    @ViewBuilder var question: Content
    @ViewBuilder var section1: Content
    @ViewBuilder var section2: Content
    
    var body: some View {
        
        VStack(spacing: 64) {
            
            question
            section1
            section2
        }
        .padding(.vertical, 32)
        .padding(.horizontal)
    }
}

//struct GuideContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        GuideContentView()
//    }
//}
