//
//  HeartRateRow.swift
//  DDBodyShape
//
//  Created by joe on 6/27/25.
//

import SwiftUI

struct HeartRateRow: View {
    var body: some View {
        HStack {
            HeartBoltView()
            
            VStack(alignment: .leading) {
                Text("Heart Rate")
                Text("30 Jun 2025")
            }
            Spacer()
            Text("256")
            Text("bmp")
        }
        .padding(.horizontal)
    }
}

struct HeartBoltView: View {
    var body: some View {
        ZStack {
            Image(systemName: "heart.fill")
                .imageScale(.large)
            Image(systemName: "bolt.horizontal.fill")
                .imageScale(.small)
                .offset(x: -3)
                .scaleEffect(y: 0.7)
                .foregroundStyle(lightGreen)
        }
        .padding()
        .background(lightGreen)
        .clipShape(Circle())
    }
}

#Preview {
    HeartRateRow()
}
