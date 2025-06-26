//
//  CurrentActivitiesView.swift
//  DDBodyShape
//
//  Created by joe on 6/20/25.
//

import SwiftUI

struct CurrentActivitiesView: View {
    var body: some View {
        VStack(spacing: 0) {
            ResultsTopRow()
                .padding()
            
            CalendarBarView(
                dailyData: [
                    .init(day: "Mon", percentage: 0.6, amount: 1),
                    .init(day: "Tue", percentage: 0.3, amount: 5),
                    .init(day: "Wed", percentage: 0.5, amount: 8),
                    .init(day: "Thu", percentage: 1.0, amount: 12),
                    .init(day: "Fri", percentage: 0.3, amount: 15)
                ],
                height: 100,
                offsetY: -5,
                selectedWeight: 13
            )
            
            Spacer()
        }
    }
}

#Preview {
    CurrentActivitiesView()
}
