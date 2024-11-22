//
//  HStackView.swift
//  SwiftUIBeginningSample
//
//  Created by PKW on 11/17/24.
//

import SwiftUI

struct StacksView: View {
    @State private var selectedSeg: Int = 0
    
    @State private var currentAlignment: Int = 0
    @State private var selectedAlignment: StackAlignmentMapper.StackAlignment = .vertical(.center)
    
    @State private var sliderValue: Double = 0
    
    let segments = ["H", "V", "Z"]
    let hAlignments = ["Center","Top","Bottom","FirstTextBaseline","LastTextBaseline"]
    let vAlignments = ["Center","Leading","Trailing","ListRowSeparatorLeading","ListRowSeparatorTrailing"]
    let zAlignments = ["Center","Top","Bottom","TopLeading","Leading","BottomLeading","BottomTrailing","CenterFirstTextBaseline","CenterLastTextBaseline","LeadingFirstTextBaseline","LeadingLastTextBaseline","TopTrailing","Trailing","TrailingFirstTextBaseline","TrailingLastTextBaseline"]
    
    var currentAlignments: [String] {
        switch selectedSeg {
        case 0:
            return hAlignments
        case 1:
            return vAlignments
        case 2:
            return zAlignments
        default:
            return []
        }
    }
    
    var body: some View {
        VStack {
            Picker("Select an option", selection: $selectedSeg) {
                ForEach(0..<segments.count, id: \.self) { index in
                    Text(segments[index])
                        .tag(index)
                }
            }
            .pickerStyle(.segmented)
            .padding(10)
            .onChange(of: selectedSeg) { oldValue, newValue in
                if oldValue != newValue {
                    
                    currentAlignment = 0
                    
                    switch selectedSeg {
                    case 0:
                        selectedAlignment = .vertical(.center)
                    case 1:
                        selectedAlignment = .horizontal(.center)
                    case 2:
                        selectedAlignment = .zstack(.center)
                    default:
                        return
                    }
                }
            }
            
            GeometryReader { reader in
                VStack(spacing: 0) {
                    // 첫 번째 뷰
                    Color.yellow
                        .frame(height: reader.size.height / 2)
                        .overlay {
                            StackBoxesView(selectedSeg: $selectedSeg, selectedAlignment: $selectedAlignment, spacing: $sliderValue)
                        }
                    
                    
                    // 두 번째 뷰
                    Color.green
                        .frame(height: reader.size.height / 2)
                        .overlay(alignment: .leading) {
                            VStack(alignment: .leading) {
                                
                                StackOptionView(selectedSeg: $selectedSeg, currentAlignment: $currentAlignment, selectedAlignment: $selectedAlignment, sliderValue: $sliderValue, currentAlignments: currentAlignments)
                                
                                Spacer()
                            }
                        }
                }
            }
        }
        .navigationTitle("Stacks")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    StacksView()
}
