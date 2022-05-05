//
//  Guide3View.swift
//  AIG(Remake)
//
//  Created by 민채호 on 2022/05/05.
//

import SwiftUI

struct Guide3View: View {
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
            Text("요소의 역할을 명확히 인식할 수 있는가?")
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
    
    var image1: some View {
        
        VStack(alignment: .trailing, spacing: 4) {
            
            RoundedRectangle(cornerRadius: 15)
                .foregroundColor(.white)
                .frame(height: 112)
                .overlay(
                    VStack(spacing: 0) {
                        
                        HStack(spacing: 8) {
                            
                            Text("타이머 설정하기")
                            Spacer()
                            HStack(spacing: 0) {
                                Image(systemName: "chevron.down")
                                    .font(.system(size: 10))
                                Text("00")
                            }
                            HStack(spacing: 0) {
                                Image(systemName: "chevron.down")
                                    .font(.system(size: 10))
                                Text("00")
                            }
                        }
                        .frame(height: 32)
                        .padding(.trailing)
                        Rectangle()
                            .foregroundColor(Color(UIColor.systemGray4))
                            .frame(height: 1)
                    }
                        .padding(.leading)
                )
            
            Text("여기서 두 가지 설정은 ‘분/초’일까요 ‘시/분’일까요?")
                .font(.caption)
                .foregroundColor(.secondary)
        }
        .padding(.horizontal)
    }
    
    var text1Bold1 = Text("이 행위가 무엇을 위한 것인지 인지하기가 힘들다면 어떨까요?").fontWeight(.bold)
    var text1Bold2 = Text("모든 사용자는 어플을 처음 사용하는 순간이 있다").fontWeight(.bold)
    var text1Bold3 = Text("직관적이거나, 최소한의 설명이 있어야 합니다.").fontWeight(.bold)
    
    var text1: some View {
        
        VStack(alignment: .leading, spacing: 10) {
            Text("Be Intuitive. Or with description.")
                .font(.title3)
                .fontWeight(.bold)
            Text("어플을 사용하려면 조작을 해야 합니다. 예를 들면 버튼을 눌러야 하거나, 설정값을 조정하거나, 직접 입력해야 하는 경우가 있죠. 그런데 \(text1Bold1) 노력을 들여 예측을 하거나 시행착오를 겪어보는 등의 불편한 과정을 거쳐야 합니다. 이렇게 되면 사용자에게 어플이 불편하고 성의 없게 만들어졌다는 인상을 줄 수 있죠.\n\n\(text1Bold2)는 사실을 명심하세요. 나중에서야 어떤 기능을 사용하기 위해 특정 버튼을 누르는것이 당연할지라도, 처음 순간에는 그게 당연하지 않을 수 있습니다.\n따라서 요소의 역할을 명확히 인식할 수 있도록 \(text1Bold3)")
                .lineSpacing(8)
        }
        .padding(.bottom, 32)
    }
    
}

// MARK: - Preview

struct Guide3View_Previews: PreviewProvider {
    static var previews: some View {
        Guide3View(guide: guideData[2])
    }
}
