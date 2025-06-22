//
//  CalendarBarView.swift
//  DDBodyShape
//
//  Created by joe on 6/20/25.
//

import SwiftUI

struct DailyDataModel: Identifiable {
    let id = UUID()
    let day: String
    let percentage: CGFloat
    let amount: Int
}

struct CalendarBarView: View {
    let selectedDay = "Thu"
    let dailyData: [DailyDataModel]
    
    let height: CGFloat
    let offsetY: CGFloat
    let selectedWeight: Int
    let selectedWeightUnits: String = "lb"
    let selectedDim = 70.0
    
    var body: some View {
        Rectangle()
            .stroke(style: StrokeStyle(lineWidth: 0.2, lineCap: .square, dash: [1, 5]))
            .frame(height: 1)
    }
}

#Preview {
    CalendarBarView(
        dailyData: [
            .init(day: "Mon", percentage: 0.6, amount: 1),
            .init(day: "Tue", percentage: 0.3, amount: 5),
            .init(day: "Wed", percentage: 0.5, amount: 8),
            .init(day: "Thu", percentage: 0.0, amount: 12),
            .init(day: "Fri", percentage: 0.3, amount: 15)
        ],
        height: 100,
        offsetY: -5,
        selectedWeight: 13
    )
}
