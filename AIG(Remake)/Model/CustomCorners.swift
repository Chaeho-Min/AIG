//
//  CustomCorners.swift
//  AIG(Remake)
//
//  Created by 민채호 on 2022/05/06.
//

import SwiftUI

struct CustomCorners: Shape {
    
    var corners: UIRectCorner // Corner 선택 .topRight, .bottomRight
    var radius: CGFloat // cornerRadius로 사용할 값
    
    func path(in rect: CGRect) -> Path {
        
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners,
                        cornerRadii: CGSize(width: radius, height: radius))
        
        return Path(path.cgPath)
    }
}
