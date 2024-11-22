//
//  StackBoxesView.swift
//  SwiftUIBeginningSample
//
//  Created by PKW on 11/21/24.
//

import SwiftUI

struct StackBoxesView: View {
    
    @Binding var selectedSeg: Int
    @Binding var selectedAlignment: StackAlignmentMapper.StackAlignment
    
    @Binding var spacing: Double
    
    var body: some View {
        switch selectedSeg {
        case 0:
            if case let .vertical(verticalAlignment) = selectedAlignment {
                HStack(alignment: verticalAlignment, spacing: spacing) {
                    ForEach(0..<3, id: \.self) { index in
                        BoxesView(index: index)
                    }
                }
            }
        case 1:
            if case let .horizontal(horizontalAlignment) = selectedAlignment {
                VStack(alignment: horizontalAlignment) {
                    ForEach(0..<3, id: \.self) { index in
                        BoxesView(index: index)
                    }
                }
            }
        case 2:
            if case let .zstack(alignment) = selectedAlignment {
                ZStack(alignment: alignment) {
                    ForEach(0..<3, id: \.self) { index in
                        BoxesView(index: index)
                    }
                }
            }
        default:
            EmptyView()
        }
    }
}

#Preview {
    StackBoxesView(selectedSeg: .constant(0), selectedAlignment: .constant(.horizontal(.center)), spacing: .constant(0))
}
