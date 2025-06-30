//
//  MainActivitiesViews.swift
//  DDBodyShape
//
//  Created by joe on 6/27/25.
//

import SwiftUI

struct MainActivitiesViews: View {
    let activities: [Activity]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                ForEach(activities) { activity in
                    CurrentActivitiesView(activity: activity)
                }
            }
            .padding()
        }
    }
}

struct Activity: Identifiable {
    let id = UUID()
    let dim: CGFloat
    let activityName: String
    let activityImage: String
}

#Preview {
    MainActivitiesViews(activities: [
        .init(dim: 150, activityName: "Running", activityImage: "figure.run"),
        .init(dim: 150, activityName: "Biking", activityImage: "figure.outdoor.cycle"),
        .init(dim: 150, activityName: "Climbing", activityImage: "figure.climbing"),
        .init(dim: 150, activityName: "Skating", activityImage: "figure.skating")
    ])
}
