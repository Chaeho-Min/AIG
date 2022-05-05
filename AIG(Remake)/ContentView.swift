//
//  ContentView.swift
//  AIG(Remake)
//
//  Created by 민채호 on 2022/05/05.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        NavigationView {
            MainView()
                .navigationTitle("AIG")
                .navigationBarHidden(true)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        ContentView().previewDevice("iPhone SE (3rd generation)")
        ContentView().previewDevice("iPhone 13 mini")
        ContentView().previewDevice("iPhone 13 Pro Max")
    }
}
