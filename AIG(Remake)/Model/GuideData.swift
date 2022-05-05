//
//  GuideData.swift
//  AIG(Remake)
//
//  Created by 민채호 on 2022/05/05.
//

import Foundation
import SwiftUI

struct Guide {
    
    let guideTitle: String
    let guideDescription: String
}

//let guide1 = "Gesture"
//let guide2 = "Expect"
//let guide3 = "Identifiable"
//let guide4 = "Minimal"
//
//let guide1Description = "Never Only"
//let guide2Description = "Behaviors In Ways People"
//let guide3Description = "Features Must Be"
//let guide4Description = "Keep It"
//
//let guide1Question = "제스처로만 사용 가능한 기능이 있는가?"

let guideData: [Guide] = [
    Guide(guideTitle: "Gesture", guideDescription: "Never Only"),
    Guide(guideTitle: "Expect", guideDescription: "Behaviors In Ways People"),
    Guide(guideTitle: "Identifiable", guideDescription: "Features Must Be"),
    Guide(guideTitle: "Minimal", guideDescription: "Keep It"),
]
