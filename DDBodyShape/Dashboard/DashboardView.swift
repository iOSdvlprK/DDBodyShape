//
//  DashboardView.swift
//  DDBodyShape
//
//  Created by joe on 4/17/25.
//

import SwiftUI

struct DashboardView: View {
    var body: some View {
        VStack {
            IconRight(imageName: "circle.grid.cross.fill", angle: 45)
                .padding()
            
            VStack(alignment: .leading, spacing: 20) {
                WelcomeMessageView(userName: "Emily")
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding()
            
            Spacer()
        }
    }
}

#Preview {
    DashboardView()
}
