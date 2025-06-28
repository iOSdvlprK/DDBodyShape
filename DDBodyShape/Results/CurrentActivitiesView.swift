//
//  CurrentActivitiesView.swift
//  DDBodyShape
//
//  Created by joe on 6/20/25.
//

import SwiftUI

struct CurrentActivitiesView: View {
    let activity: Activity
    
    var body: some View {
        RoundedRectangle(cornerRadius: 20)
            .stroke(Color.black, lineWidth: 1)
            .frame(width: activity.dim, height: activity.dim)
    }
}

#Preview {
    CurrentActivitiesView(activity: .init(dim: 150, activityName: "Running", activityImage: "figure.run"))
}
