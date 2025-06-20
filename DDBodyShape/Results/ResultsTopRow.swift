//
//  ResultsTopRow.swift
//  DDBodyShape
//
//  Created by joe on 6/20/25.
//

import SwiftUI

struct ResultsTopRow: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text("Result")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                Text("June 2025")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundStyle(.gray)
            }
            Spacer()
            Image(systemName: "arrow.uturn.backward")
                .foregroundStyle(.white)
                .padding()
                .background(Color.black)
                .clipShape(Circle())
        }
    }
}

#Preview {
    ResultsTopRow()
}
