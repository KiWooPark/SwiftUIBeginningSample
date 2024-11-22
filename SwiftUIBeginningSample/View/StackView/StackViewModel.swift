//
//  StackViewModel.swift
//  SwiftUIBeginningSample
//
//  Created by PKW on 11/22/24.
//

import Foundation

class StackViewModel: ObservableObject {
    @Published var selectedSeg: Int = 0
    @Published var currentAlignment: Int = 0
    @Published var selectedAlignment: StackAlignmentMapper.StackAlignment = .vertical(.center)
    @Published var sliderValue: Double = 20 // 초기 Spacing 값
}
