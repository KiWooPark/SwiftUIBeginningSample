//
//  StackOptionView.swift
//  SwiftUIBeginningSample
//
//  Created by PKW on 11/21/24.
//

import SwiftUI

struct StackOptionView: View {
    
    @Binding var selectedSeg: Int
    @Binding var currentAlignment: Int
    @Binding var selectedAlignment: StackAlignmentMapper.StackAlignment
    @Binding var sliderValue: Double
    
    let currentAlignments: [String]
   
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text("Alignment")
                    .font(.headline)
                
                Picker("SelectedAlignment", selection: $currentAlignment) {
                    ForEach(0..<currentAlignments.count, id: \.self) { index in
                        Text(currentAlignments[index])
                            .tag(index)
                    }
                }
                .pickerStyle(.menu)
                .tint(.red)
                .foregroundStyle(.red)
                .onChange(of: currentAlignment) { oldValue, newValue in
                    switch selectedSeg {
                    case 0:
                        selectedAlignment = StackAlignmentMapper.hStackAlignment(from: currentAlignments[newValue])
                    case 1:
                        selectedAlignment = StackAlignmentMapper.vStackAlignment(from: currentAlignments[newValue])
                    case 2:
                        selectedAlignment = StackAlignmentMapper.zStackAlignment(from: currentAlignments[newValue])
                    default:
                        return
                    }
                }
            }
            
            HStack {
                Text("Spacing")
                    .font(.headline)

                Text("\(sliderValue, specifier: "%.0f")")
                    .foregroundStyle(.red)
                
                Slider(value: $sliderValue, in: 0...100)
                    
            }
        }
        .padding()
    }
}

#Preview {
    StackOptionView(selectedSeg: .constant(0), currentAlignment: .constant(0), selectedAlignment: .constant(.vertical(.center)), sliderValue: .constant(0), currentAlignments: ["1,2,3"])
}
