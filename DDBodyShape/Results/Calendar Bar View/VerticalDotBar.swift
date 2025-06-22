//
//  VerticalDotBar.swift
//  DDBodyShape
//
//  Created by joe on 6/22/25.
//

import SwiftUI

struct VerticalDotBar: View {
    let percent: CGFloat
    let isSelected: Bool
    let height: CGFloat
    let day: String
    let amount: Int
    let offsetY: CGFloat
    let selectedWeight: Int
    var selectedWeightUnits: String = "lb"
    
    let circleDim = 8.0
    
    var body: some View {
        VStack(spacing: 0) {
            if isSelected {
                Text("SELECTED")
            }
            GeometryReader { geometry in
                ZStack(alignment: .bottom) {
                    Rectangle()
                        .stroke(lineWidth: 0.5)
                        .frame(width: 1, height: height)
                    
                    // circle + highlight
                    ZStack {
                        if isSelected {
                            Text("highlighted circle")
                        }
                        
                        Circle()
                            .frame(width: circleDim, height: circleDim)
                            .offset(y: -height * percent)
                    }
                }
            }
        }
    }
}

#Preview {
    VerticalDotBar(percent: 0.6, isSelected: false, height: 100, day: "Mon", amount: 7, offsetY: -5, selectedWeight: 12)
        .padding()
}
