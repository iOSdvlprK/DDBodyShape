//
//  WelcomeMessageView.swift
//  DDBodyShape
//
//  Created by joe on 6/13/25.
//

import SwiftUI

struct WelcomeMessageView: View {
    let userName: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 15) {
            HStack {
                Text("Hi,")
                Text(userName)
                    .fontWeight(.bold)
            }
            .font(.largeTitle)
            
            Text("Your boards looks so good")
                .font(.title3)
                .frame(width: screenWidth / 2, alignment: .leading)
                .multilineTextAlignment(.leading)
        }
    }
}

#Preview {
    WelcomeMessageView(userName: "Emily")
}
