//
//  ContentView.swift
//  SwiftUIBeginningSample
//
//  Created by PKW on 11/17/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
            Text("깃허브 커밋 테스트")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
