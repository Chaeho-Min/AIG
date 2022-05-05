//
//  Guide4View.swift
//  AIG(Remake)
//
//  Created by 민채호 on 2022/05/05.
//

import SwiftUI

struct Guide4View: View {
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
            Text("정말 지금이 최소한인가?")
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
                    HStack(spacing: 8) {
                        Image(systemName: "pencil").font(.system(size: 22, weight: .medium))
                        Image(systemName: "crop").font(.system(size: 22, weight: .medium))
                        Image(systemName: "eyedropper").font(.system(size: 22, weight: .medium))
                        Image(systemName: "move.3d").font(.system(size: 22, weight: .medium))
                        Image(systemName: "scale.3d").font(.system(size: 22, weight: .medium))
                        Image(systemName: "rotate.3d").font(.system(size: 22, weight: .medium))
                        Image(systemName: "skew").font(.system(size: 22, weight: .medium))
                    }
                )
            
            Text("기능이 많으면 부담을 느끼고 도망갈 수도 있습니다.")
                .font(.caption)
                .foregroundColor(.secondary)
        }
        .padding(.horizontal)
    }
    
    var text1Bold1 = Text("‘직관적인’과 ‘기능이 많은’은 공존하기 힘듭니다.").fontWeight(.bold)
    var text1Bold2 = Text("어플이 단순해질수록 타겟이 좁혀지고, 해당 타겟층에게 매력적으로 다가오게 됩니다.").fontWeight(.bold)
    
    var text1: some View {
        
        VStack(alignment: .leading, spacing: 10) {
            Text("Removing and removing.")
                .font(.title3)
                .fontWeight(.bold)
            Text("\(text1Bold1) 보통 기능이 많아지면 복잡해지고, 어플 사용을 위해 노력을 더 들여야 하죠. 따라서 직관적이고 편한 어플을 만들기 위해서는 계속 덜어내야 합니다. 현재 있는 요소가 정말 필요한 요소인지를 계속 고민해야 하죠. 조금이라도 고민이 되면 한 번 빼는 것을 고려해보세요. \(text1Bold2)")
                .lineSpacing(8)
        }
    }
    
    var image2: some View {
        
        VStack(alignment: .trailing, spacing: 4) {
            
            HStack(spacing: 16) {
                RoundedRectangle(cornerRadius: 15)
                    .foregroundColor(.white)
                    .frame(height: 112)
                    .overlay(
                        HStack(spacing: 0) {
                            VStack {
                                Image(systemName: "line.3.horizontal")
                                    .padding(8)
                                    .overlay(
                                        Circle()
                                            .foregroundColor(Color(UIColor.systemGray3))
                                            .opacity(0.6)
                                            .frame(width: 22, height: 22)
                                            .offset(x: 6, y: 10)
                                    )
                                Spacer()
                            }
                            Rectangle()
                                .frame(width: 1)
                            HStack(spacing: 0) {
                                VStack(spacing: 0) {
                                    HStack(spacing: 6) {
                                        Image(systemName: "house")
                                        Text("Main")
                                    }
                                    .font(.system(size: 12, weight: .medium))
                                    .padding(.vertical, 8)
                                    Rectangle()
                                        .frame(height: 1)
                                    HStack(spacing: 6) {
                                        Image(systemName: "chart.xyaxis.line")
                                        Text("Chart")
                                            .overlay(
                                                Circle()
                                                    .foregroundColor(Color(UIColor.systemGray3))
                                                    .opacity(0.6)
                                                    .frame(width: 22, height: 22)
                                                    .offset(x: 24, y: 4)
                                            )
                                    }
                                    .font(.system(size: 12, weight: .medium))
                                    .padding(.vertical, 8)
                                    Rectangle()
                                        .frame(height: 1)
                                    Spacer()
                                }
                                Rectangle()
                                    .frame(width: 1)
                            }
                            .background(
                                Color(UIColor.secondarySystemFill)
                            )
                            .padding(.trailing)
                        }
                    )
                RoundedRectangle(cornerRadius: 15)
                    .foregroundColor(.white)
                    .frame(height: 112)
                    .overlay(
                        VStack(spacing: 0) {
                            Spacer()
                            Rectangle()
                                .foregroundColor(Color(UIColor.systemGray4))
                                .frame(height: 1)
                            HStack {
                                VStack(spacing: 0) {
                                    Image(systemName: "house")
                                        .font(.system(size: 16, weight: .medium))
                                    Text("Main")
                                        .font(.system(size: 10, weight: .medium))
                                }
                                .padding(.vertical, 4)
                                .frame(maxWidth: .infinity)
                                VStack(spacing: 0) {
                                    Image(systemName: "chart.xyaxis.line")
                                        .font(.system(size: 16, weight: .medium))
                                        .overlay(
                                            Circle()
                                                .foregroundColor(Color(UIColor.systemGray3))
                                                .opacity(0.6)
                                                .frame(width: 22, height: 22)
                                                .offset(x: 12)
                                        )
                                    Text("Chart")
                                        .font(.system(size: 10, weight: .medium))
                                }
                                .padding(.vertical, 4)
                                .frame(maxWidth: .infinity)
                            }
                            .background(
                                Rectangle()
                                    .foregroundColor(Color(UIColor.secondarySystemFill))
                                    .clipShape(CustomCorners(corners: [.bottomLeft, .bottomRight], radius: 12))
                            )
                        }
                    )
            }
            
            Text("햄버거 버튼과 탭바. 어느 것이 이동에 더 적은 행동을 취할까요?")
                .font(.caption)
                .foregroundColor(.secondary)
        }
        .padding(.horizontal)
    }
    
    var text2Bold1 = Text("행동의 횟수도 최소화").fontWeight(.bold)
    var text2Bold2 = Text("‘이 행동이 굳이 필요한가? 더 줄일 수 있지 않을까?’").fontWeight(.bold)
    
    var text2: some View {
        
        VStack(alignment: .leading, spacing: 10) {
            Text("Minimize action steps.")
                .font(.title3)
                .fontWeight(.bold)
            Text("기능의 개수 뿐만 아니라 기능을 사용하기 위해 행해야 하는 \(text2Bold1)해야 합니다. 계속 탭해야 할 위치가 변하면, 정확히 조준해가며 탭하는게 매우 귀찮아집니다. 따라서 사용자를 최대한 덜 귀찮게 만들어야 합니다. 어플의 플로우를 쭉 따라가보면서 \(text2Bold2)를 계속 고민해보는 것을 추천합니다.")
                .lineSpacing(8)
        }
        .padding(.bottom, 32)
    }
    
}

// MARK: - Preview

struct Guide4View_Previews: PreviewProvider {
    static var previews: some View {
        Guide4View(guide: guideData[3])
    }
}
