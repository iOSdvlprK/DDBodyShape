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

    let offsetY: CGFloat
    let selectedWeight: Int
    var selectedWeightUnits: String = "lb"
    
    let circleDim = 8.0
    let delta = 10.0
    
    var body: some View {
        VStack(spacing: 0) {
            if isSelected {
                HStack(spacing: 3) {
                    Text("\(selectedWeight)")
                        .font(.title2)
                        .fontWeight(.bold)
                    Text("\(selectedWeightUnits)")
                }
                .padding(.vertical, 30)
            }
            ZStack(alignment: .bottom) {
                Rectangle()
                    .stroke(lineWidth: 0.5)
                    .frame(width: 1, height: height)
                
                // circle + highlight
                ZStack {
                    if isSelected {
                        Circle()
                            .fill(lightGreen)
                            .frame(width: circleDim + delta, height: circleDim + delta)
                            .offset(y: -(height - circleDim) * percent)
                            .offset(y: -offsetY)
                    }
                    
                    Circle()
                        .frame(width: circleDim, height: circleDim)
                        .offset(y: -(height - circleDim) * percent)
                        .offset(y: -offsetY)
                }
            }
        }
    }
}

struct VerticalDotBar_Previews: PreviewProvider {
    static var previews: some View {
        HStack(alignment: .bottom) {
            VerticalDotBar(percent: 0.6, isSelected: false, height: 100, offsetY: -5, selectedWeight: 12)
                .padding()
            VerticalDotBar(percent: 1, isSelected: true, height: 100, offsetY: -5, selectedWeight: 12)
                .padding()
        }
    }
}

//#Preview {
//    HStack(alignment: .bottom) {
//        VerticalDotBar(percent: 0.6, isSelected: false, height: 100, day: "Mon", amount: 7, offsetY: -5, selectedWeight: 12)
//            .padding()
//        VerticalDotBar(percent: 1, isSelected: false, height: 100, day: "Tue", amount: 7, offsetY: -5, selectedWeight: 12)
//            .padding()
//    }
//}
