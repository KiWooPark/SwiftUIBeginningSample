//
//  StackAlignments.swift
//  SwiftUIBeginningSample
//
//  Created by PKW on 11/21/24.
//

import Foundation
import SwiftUI

struct StackAlignmentMapper {
    
    enum StackAlignment {
        case vertical(VerticalAlignment)
        case horizontal(HorizontalAlignment)
        case zstack(Alignment)
    }
    
    static func hStackAlignment(from alignment: String) -> StackAlignment {
        switch alignment {
        case "Center":
            return .vertical(.center)
        case "Top":
            return .vertical(.top)
        case "Bottom":
            return .vertical(.bottom)
        case "FirstTextBaseline":
            return .vertical(.firstTextBaseline)
        case "LastTextBaseline":
            return .vertical(.lastTextBaseline)
        default:
            return .vertical(.center)
        }
    }
    
    static func vStackAlignment(from alignment: String) -> StackAlignment {
        switch alignment {
        case "Center":
            return .horizontal(.center)
        case "Leading":
            return .horizontal(.leading)
        case "Trailing":
            return .horizontal(.trailing)
        case "ListRowSeparatorLeading":
            return .horizontal(.listRowSeparatorLeading)
        case "ListRowSeparatorTrailing":
            return .horizontal(.listRowSeparatorTrailing)
        default:
            return .horizontal(.center)
        }
    }

    static func zStackAlignment(from alignment: String) -> StackAlignment {
        switch alignment {
        case "Center":
            return .zstack(.center)
        case "Top":
            return .zstack(.top)
        case "Bottom":
            return .zstack(.bottom)
        case "TopLeading":
            return .zstack(.topLeading)
        case "Leading":
            return .zstack(.leading)
        case "BottomLeading":
            return .zstack(.bottomLeading)
        case "BottomTrailing":
            return .zstack(.bottomTrailing)
        case "CenterFirstTextBaseline":
            return .zstack(.centerFirstTextBaseline)
        case "CenterLastTextBaseline":
            return .zstack(.centerLastTextBaseline)
        case "LeadingFirstTextBaseline":
            return .zstack(.leadingFirstTextBaseline)
        case "LeadingLastTextBaseline":
            return .zstack(.leadingLastTextBaseline)
        case "TopTrailing":
            return .zstack(.topTrailing)
        case "Trailing":
            return .zstack(.trailing)
        case "TrailingFirstTextBaseline":
            return .zstack(.trailingFirstTextBaseline)
        case "TrailingLastTextBaseline":
            return .zstack(.trailingLastTextBaseline)
        default:
            return .zstack(.center)
        }
    }

}
