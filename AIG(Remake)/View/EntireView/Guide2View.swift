//
//  Guide2View.swift
//  AIG(Remake)
//
//  Created by 민채호 on 2022/05/05.
//

import SwiftUI

struct Guide2View: View {
    var guide: Guide
    
    var body: some View {
        
        ZStack {
            
            Color.bgColor.ignoresSafeArea()
            
            VStack(spacing: 0) {
                CustomNavigationBar(title: guide.guideTitle)
                
                ScrollView(showsIndicators: false) {
                    
                    VStack(spacing: 64) {
                        question
                        content1
                        content2
                    }
                    .padding(.vertical, 32)
                }
                .ignoresSafeArea(edges: .bottom)
                .padding(.horizontal)
            }
        }
    }
    
    // MARK: - view를 품은 변수들
    
    var question: some View {
        HStack(spacing: 16) {
            
            Rectangle()
                .frame(width: 4)
            Text("맥락상 있을법한 제스처는 구현했는가?")
                .font(Font.custom("AppleSDGothicNeo-Bold", size: 35))
                .frame(maxWidth: .infinity, alignment: .leading)
        }
    }
    
    var content1: some View {
        
        VStack(spacing: 32) {
            image1
            text1
        }
    }
    
    var content2: some View {
        
        VStack(spacing: 32) {
            image2
            text2
        }
    }
    
    var image1: some View {
        
        VStack(alignment: .trailing, spacing: 4) {
            
            RoundedRectangle(cornerRadius: 15)
                .foregroundColor(.white)
                .frame(height: 112)
                .overlay(
                    VStack {
                        HStack(spacing: 0) {
                            VStack {
                                Text("상의")
                                    .font(.title3)
                                    .fontWeight(.bold)
                                    .foregroundColor(.noDarkModeBlack)
                                    .padding(.top, 8)
                                    .padding(.bottom, 7)
                                Rectangle()
                                    .frame(height: 3)
                                    .foregroundColor(.noDarkModeBlack)
                            }
                            VStack {
                                Text("하의")
                                    .font(.title3)
                                    .padding(.vertical, 8)
                                Rectangle()
                                    .frame(height: 1)
                            }
                            .foregroundColor(Color(UIColor.systemGray4))
                            VStack {
                                Text("모자")
                                    .font(.title3)
                                    .padding(.vertical, 8)
                                Rectangle()
                                    .frame(height: 1)
                            }
                            .foregroundColor(Color(UIColor.systemGray4))
                        }
                        .padding(.horizontal)
                        .padding(.top, 7)
                        Spacer()
                    }
                )
            
            Text("상단에 이런 바가 있으면 탭보다는 스와이프로 넘기고 싶지 않을까요?")
                .font(.caption)
                .foregroundColor(.secondary)
        }
        .padding(.horizontal)
    }
    
    var text1Bold1 = Text("사용자가 어떤 제스처를 원하고 시도해볼지 추측하여 구현해야 합니다.").fontWeight(.bold)
    var text1Bold2 = Text("맥락에 맞는 제스처").fontWeight(.bold)
    
    var text1: some View {
        
        VStack(alignment: .leading, spacing: 10) {
            Text("Guess User’s Expectation.")
                .font(.title3)
                .fontWeight(.bold)
            Text("제스처 기능의 존재는 눈에 보이지 않기 때문에 제스처 사용은 온전히 사용자의 예측에 달려있습니다. 따라서 개발자는 \(text1Bold1)\n사용자가 시도할법한 제스처를 구현해야 하기 때문에, \(text1Bold2)를 고민해야 합니다.")
                .lineSpacing(8)
        }
    }
    
    var image2: some View {
        
        VStack(alignment: .trailing, spacing: 4) {
            
            RoundedRectangle(cornerRadius: 15)
                .foregroundColor(.white)
                .frame(height: 112)
                .overlay(
                    VStack(spacing: 0) {
                        HStack(spacing: 0) {
                            VStack {
                                Text("상의")
                                    .font(.title3)
                                    .fontWeight(.bold)
                                    .foregroundColor(.noDarkModeBlack)
                                    .padding(.top, 8)
                                    .padding(.bottom, 7)
                                Rectangle()
                                    .foregroundColor(.noDarkModeBlack)
                                    .frame(height: 3)
                            }
                            VStack {
                                Text("하의")
                                    .font(.title3)
                                    .padding(.vertical, 8)
                                    .frame(maxWidth: .infinity)
                                    .background(
                                        RoundedRectangle(cornerRadius: 10)
                                            .foregroundColor(Color(UIColor.quaternarySystemFill))
                                            .overlay(
                                                VStack {
                                                    Spacer()
                                                    HStack {
                                                        Spacer()
                                                        Circle()
                                                            .frame(width: 22, height: 22)
                                                            .padding(4)
                                                    }
                                                }
                                            )
                                    )
                                Rectangle()
                                    .frame(height: 1)
                            }
                            .foregroundColor(Color(UIColor.systemGray4))
                            VStack {
                                Text("모자")
                                    .font(.title3)
                                    .padding(.vertical, 8)
                                Rectangle()
                                    .frame(height: 1)
                            }
                            .foregroundColor(Color(UIColor.systemGray4))
                        }
                        .padding(.horizontal)
                        .padding(.top, 7)
                        
                        RoundedRectangle(cornerRadius: 10)
                            .foregroundColor(Color(UIColor.quaternarySystemFill))
                            .padding(.vertical, 5)
                            .padding(.horizontal)
                            .overlay(
                                Capsule()
                                    .fill(
                                        LinearGradient(gradient: Gradient(colors: [.white.opacity(0), Color(UIColor.systemGray3)]), startPoint: .leading, endPoint: .trailing)
                                    )
                                    .frame(width: 110, height: 22)
                            )
                    }
                )
            
            Text("‘하의’ 탭으로 넘어갈 때 버튼 영역보다는 제스처 영역이 더 넓습니다.")
                .font(.caption)
                .foregroundColor(.secondary)
        }
        .padding(.horizontal)
    }
    
    var text2Bold1 = Text("정확한 부분을 조준해서 탭해야 하는 버튼").fontWeight(.bold)
    var text2Bold2 = Text("제스처는 좀 더 넓은 영역을 조작").fontWeight(.bold)
    var text2Bold3 = Text("동일한 역할을 하는 제스처를 지원").fontWeight(.bold)
    
    var text2: some View {
        
        VStack(alignment: .leading, spacing: 10) {
            Text("Button vs Gesture.")
                .font(.title3)
                .fontWeight(.bold)
            Text("그럼 버튼이 있는데 왜 제스처를 추가로 지원해야 할까요? \(text2Bold1)과 달리 \(text2Bold2)해도 되기 때문에 버튼과 제스처, 두 가지 방법을 제시하면 대부분의 사용자는 제스처를 택할 것입니다.\n따라서 자주 탭하거나 누르기 어려운 위치에 있는 버튼은 \(text2Bold3)하는 것을 추천합니다.")
                .lineSpacing(8)
        }
        .padding(.bottom, 32)
    }
    
}

// MARK: - Preview

struct Guide2View_Previews: PreviewProvider {
    static var previews: some View {
        Guide2View(guide: guideData[1])
    }
}
