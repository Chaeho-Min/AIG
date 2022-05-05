//
//  Guide1View.swift
//  AIG(Remake)
//
//  Created by 민채호 on 2022/05/05.
//

import SwiftUI

struct Guide1View: View {
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
    
    // MARK: - view를 품은 변수
    
    var question: some View {
        HStack(spacing: 16) {
            
            Rectangle()
                .frame(width: 4)
            Text("제스처로만 사용 가능한 기능이 있는가?")
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
            
            VStack(spacing: 0) {
                
                HStack {
                    
                    Text("할 일")
                        .fontWeight(.semibold)
                    Spacer()
                    Text("편집")
                        .frame(width: 44)
                    Image(systemName: "plus")
                        .frame(width: 44)
                }
                .frame(height: 44)
                .padding(.horizontal, 12)
                .padding(.top, 12)
                
                HStack(spacing: 0) {
                    VStack {
                        Spacer(minLength: 0)
                        HStack {
                            Text("오늘의 할 일 1")
                            Spacer()
                            Capsule()
                                .fill(
                                    LinearGradient(gradient: Gradient(colors: [.white, Color(UIColor.systemGray3)]), startPoint: .leading, endPoint: .trailing)
                                )
                                .frame(width: 110, height: 22)
                        }
                        .padding(.leading, 4)
                        .padding(.trailing, 8)
                        Rectangle()
                            .foregroundColor(Color(UIColor.systemGray4))
                            .frame(height: 1)
                    }
                    .frame(height: 44)
                    Rectangle()
                        .foregroundColor(.red)
                        .frame(width: 20)
                }
                .frame(height: 44)
                .padding(.bottom, 12)
            }
            .background(
                RoundedRectangle(cornerRadius: 15)
                    .foregroundColor(.white)
                    .frame(height: 112)
            )
            
            Text("편집 버튼과 달리 삭제 제스처는 눈에 보이지 않습니다.")
                .font(.caption)
                .foregroundColor(.secondary)
        }
        .padding(.horizontal)
    }
    
    var text1Bold = Text("명심하세요. 제스처는 보충의 역할을 해야지, 대체를 해버리면 안됩니다.").fontWeight(.bold)
    
    var text1: some View {
        
        VStack(alignment: .leading, spacing: 10) {
            Text("Gesture is invisible.")
                .font(.title3)
                .fontWeight(.bold)
            Text("제스처는 눈에 보이지 않는 숨겨진 기능입니다. 따라서 제스처 사용은 온전히 사용자의 ‘예측'에 달려있습니다. 그런데 어떤 기능이 제스처로만 지원하고 눈에 보이는 버튼이 없다면, 제스처 사용에 익숙하지 않은 사용자는 그 기능을 사용하지 못할 것입니다.\n\(text1Bold)")
                .lineSpacing(8)
        }
    }
    
    var image2: some View {
        
        VStack(alignment: .trailing, spacing: 4) {
            
            Rectangle()
                .foregroundColor(.white)
                .frame(height: 91)
                .overlay(
                    VStack {
                        Spacer()
                        HStack {
                            HStack(spacing: 3) {
                                Image(systemName: "chevron.backward")
                                    .font(.system(size: 22, weight: .medium))
                                Text("Parent Title")
                            }
                            .foregroundColor(.blue)
                            .frame(maxWidth: .infinity)
                            Text("Title")
                                .font(.headline)
                            Color.clear.frame(height: 1)
                        }
                        .padding(.bottom, 12)
                    }
                )
            
            Text("내비게이션바는 항상 제스처와 함께 뒤로가기 버튼을 제공합니다.")
                .font(.caption)
                .foregroundColor(.secondary)
        }
        .padding(.horizontal)
    }
    
    var text2Bold = Text("리스트에 편집 버튼이 없다면 제스처를 모르는 사용자는 리스트를 어떻게 삭제할까요?").fontWeight(.bold)
    
    var text2: some View {
        
        VStack(alignment: .leading, spacing: 10) {
            Text("Always with visible.")
                .font(.title3)
                .fontWeight(.bold)
            Text("iOS 기본 요소는 모두 제스처와 동일한 액션을 하는 버튼을 제공합니다. 내비게이션바의 뒤로가기 버튼이나, 리스트의 편집 버튼 같이 말이죠. 생각해보세요, \(text2Bold)")
                .lineSpacing(8)
        }
        .padding(.bottom, 32)
    }
    
}

struct Guide1View_Previews: PreviewProvider {
    static var previews: some View {
        Guide1View(guide: guideData[0])
    }
}
