//
//  ContentView.swift
//  Newspaper
//
//  Created by Shuvam Shrestha on 6/11/2026.
//

// Views
// Modifiers (modify the view)
//
// Parameters (passes inside View, Modifer)
//
//Closure (don't wory about it - it's just closing shi)
// Divisible by 4px

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 16) {
                Image("Pigeon")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 320, height: 320)
                    .padding(24)
                    .background {
                        Color.newspaperTextureWhite
                    }
                VStack(alignment: .leading, spacing: 2) {
                    HStack {
                        Text("I'm a bird")
                        Image(systemName: "heart.fill")
                            .foregroundStyle(Color.red)
                    }
                        .font(.largeTitle)
                        
                    Text("Bird bird bird, bird is the word")
                        .font(.system(size: 16)) // For custom size
                }
            }
            .padding()
            .fontWeight(.semibold)
            .fontDesign(.serif)
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
        }
    }
}

#Preview {
    ContentView()
}
