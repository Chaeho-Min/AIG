//
//  CustomNavigationBar.swift
//  AIG(Remake)
//
//  Created by 민채호 on 2022/05/05.
//

import SwiftUI

struct CustomNavigationBar: View {
    @Environment(\.dismiss) var dismiss
    var title: String
    
    var body: some View {
        
        VStack(spacing: 0) {
            
            HStack {
                
                Button {
                    dismiss()
                } label: {
                    HStack(spacing: 3) {
                        Image(systemName: "chevron.backward")
                            .font(.system(size: 22, weight: .medium))
                        Text("AIG")
                    }
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                Text(title)
                    .font(.headline)
                Color.clear
            }
            .frame(height: 44)
            .padding(.horizontal, 8)
            Rectangle()
                .foregroundColor(Color(UIColor.systemGray3))
                .frame(height: 1)
        }
//        .background(
//            Color.bgColor
//        )
    }
}

struct CustomNavigationBar_Previews: PreviewProvider {
    static var previews: some View {
        CustomNavigationBar(title: "Gesture")
    }
}
