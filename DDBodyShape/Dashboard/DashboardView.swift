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
            Spacer()
        }
    }
}

#Preview {
    DashboardView()
}
