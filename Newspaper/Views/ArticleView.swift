//
//  ArticleView.swift
//  Newspaper
//
//  Created by Shuvam Shrestha on 6/11/2026.
//

import SwiftUI

struct ArticleView: View {
    
    var article: Article = Article(
        title: "AI Pigeon takes over the world",
        coverImage: "Pigeon",
        body: "AI Pigeon be whispering in your ear and telling the world is under their control AI Pigeon be whispering in your ear and telling the world is under their control AI Pigeon be whispering in your ear and telling the world is under their control AI Pigeon be whispering in your ear and telling the world is under their control AI Pigeon be whispering in your ear and telling the world is under their control",
        author: "Hiba Rehman",
        date: .now
    )
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 24) {
                
                // Article header
                VStack(alignment: .leading, spacing: 12) {
                    Text(article.title)
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .fontDesign(.serif)
                        .fixedSize(horizontal: false, vertical: true)
                    
                    HStack(spacing: 6) {
                        Text("By \(article.author)")
                            .fontWeight(.semibold)
                        
                        Text("•")
                        
                        Text(article.date, format: .dateTime
                            .day()
                            .month(.wide)
                            .year()
                        )
                    }
                    .font(.subheadline)
                    .foregroundStyle(.secondary)
                }
                
                // Cover image
                Image(article.coverImage)
                    .resizable()
                    .scaledToFill()
                    .frame(height: 240)
                    .frame(maxWidth: .infinity)
                    .clipShape(RoundedRectangle(cornerRadius: 16))
                
                // Article body
                Text(article.body)
                    .font(.body)
                    .fontDesign(.serif)
                    .lineSpacing(6)
                    .fixedSize(horizontal: false, vertical: true)
            }
            .padding()
            .frame(maxWidth: 700, alignment: .leading)
        }
    }
}
#Preview {
    ArticleView()
}
