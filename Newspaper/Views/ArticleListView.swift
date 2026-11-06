//
//  ArticleListView.swift
//  Newspaper
//
//  Created by Shuvam Shrestha on 6/11/2026.
//

import SwiftUI

struct ArticleListView: View {
    
    @StateObject private var articleViewModel: ArticleViewModel = ArticleViewModel()
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(articleViewModel.articles) { article in
                    NavigationLink {
                        ArticleView(article: article)
                    } label: {
                        ArticleListRow(article: article)
                    }
                }
            }
        }
    }
}

struct ArticleListRow: View {
    
    var article: Article
    
    var body: some View {
        VStack(alignment: .leading, spacing: 6) {

            Text(article.title)

                .font(.headline)

                .fontWeight(.bold)

                .lineLimit(2)

            

            HStack(spacing: 4) {

                Text("By \(article.author)")

                

                Text("•")

                

                Text(article.date, format: .dateTime.day().month(.abbreviated))

            }

            .font(.caption)

            .foregroundStyle(.secondary)

        }
    }
}

#Preview {
    ArticleListView()
}
