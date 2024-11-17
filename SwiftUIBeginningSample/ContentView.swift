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
            Text("시작")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
