//
//  Extension.swift
//  AIG(Remake)
//
//  Created by 민채호 on 2022/05/05.
//

import SwiftUI

extension Color {
    static let bgColor = Color("bgColor")
    static let noDarkModeBlack = Color("noDarkModeBlack")
}


extension UINavigationController: ObservableObject, UIGestureRecognizerDelegate {
    override open func viewDidLoad() {
        super.viewDidLoad()
        interactivePopGestureRecognizer?.delegate = self
    }

    public func gestureRecognizerShouldBegin(_ gestureRecognizer: UIGestureRecognizer) -> Bool {
        return viewControllers.count > 1
    }
}
