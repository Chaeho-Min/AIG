//
//  MainView.swift
//  AIG(Remake)
//
//  Created by 민채호 on 2022/05/05.
//

import SwiftUI

struct MainView: View {
    @State private var selection = guideData[0].guideTitle
    
    var body: some View {
        
        ZStack {
            
            Color.bgColor.ignoresSafeArea()
            
            VStack(spacing: 0) {
                
                title
                Spacer()
                categoryButtons
                categoryGOButton
            }
            .padding()
        }
    }
    
    // MARK: - view를 품은 변수들
    
    var title: some View {
        VStack(alignment: .leading, spacing: 0) {
            Text("AIG")
                .font(.system(size: 45, weight: .black))
            Text("(AVOCADO INTERFACE GUIDELINE)")
                .font(.footnote)
                .foregroundColor(.secondary)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
    }
    
    var categoryButtons: some View {
        VStack(alignment: .leading, spacing: 8) {

            ForEach(0..<guideData.count, id: \.self) { index in
                CategoryButton(selection: $selection, guide: guideData[index])
            }
        }
        .frame(maxWidth: .infinity, alignment: .leading)
    }
    
    var categoryGOButton: some View {
        NavigationLink {
            switch selection {
            case guideData[0].guideTitle:
                Guide1View(guide: guideData[0]).navigationBarHidden(true)
            case guideData[1].guideTitle:
                Guide2View(guide: guideData[1]).navigationBarHidden(true)
            case guideData[2].guideTitle:
                Guide3View(guide: guideData[2]).navigationBarHidden(true)
            case guideData[3].guideTitle:
                Guide4View(guide: guideData[3]).navigationBarHidden(true)
            default:
                EmptyView()
            }
        } label: {
            Text("GO")
                .font(.system(size: 45, weight: .black))
        }
        .padding(.top, 16)
    }
}

// MARK: - 여기서만 쓰이는 struct view

struct CategoryButton: View {
    @Binding var selection: String
    var guide: Guide
    
    var body: some View {
        if selection != guide.guideTitle {
            Button {
                selection = guide.guideTitle
            } label: {
                VStack(alignment: .leading, spacing: -8) {
                    Text(guide.guideDescription)
                        .font(.system(size: 16, weight: .black))
                        .opacity(0)
                    Text(guide.guideTitle)
                        .font(.system(size: 45, weight: .black))
                }
                .tint(Color(UIColor.systemGray4))
            }
        } else {
            NavigationLink {
                switch selection {
                case guideData[0].guideTitle:
                    Guide1View(guide: guideData[0]).navigationBarHidden(true)
                case guideData[1].guideTitle:
                    Guide2View(guide: guideData[1]).navigationBarHidden(true)
                case guideData[2].guideTitle:
                    Guide3View(guide: guideData[2]).navigationBarHidden(true)
                case guideData[3].guideTitle:
                    Guide4View(guide: guideData[3]).navigationBarHidden(true)
                default:
                    EmptyView()
                }
            } label: {
                VStack(alignment: .leading, spacing: -8) {
                    Text(guide.guideDescription)
                        .font(.system(size: 16, weight: .black))
                    Text(guide.guideTitle)
                        .font(.system(size: 45, weight: .black))
                }
                .tint(.accentColor)
            }
        }
    }
}

 // MARK: - Preview

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
