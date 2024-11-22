//
//  MainView.swift
//  SwiftUIBeginningSample
//
//  Created by PKW on 11/17/24.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        
        NavigationView {
            List {
                NavigationLink("Stack", destination: StacksView())
            }
            .navigationTitle("SwiftUI")
        }
    }
}

#Preview {
    MainView()
}
