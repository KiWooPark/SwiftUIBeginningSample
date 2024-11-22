//
//  StackBoxViews.swift
//  SwiftUIBeginningSample
//
//  Created by PKW on 11/21/24.
//

import SwiftUI

struct BoxesView: View {
    let index: Int
    private var sizes: [CGFloat] = [100, 80, 60]
    private var colors: [Color] = [.red, .blue, .green]

    init(index: Int) {
        self.index = index
    }
    
    var body: some View {
        Rectangle()
            .fill(colors[index % colors.count])
            .frame(width: sizes[index % sizes.count], height: sizes[index % sizes.count])
    }
}

#Preview {
    BoxesView(index: 0)
}
