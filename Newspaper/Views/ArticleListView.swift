//
//  ArticleListView.swift
//  Newspaper
//
//  Created by Shuvam Shrestha on 6/11/2026.
//

import SwiftUI

struct ArticleListView: View {
    
    var articles: [Article] =
    [
        Article(
            
            title: "AI Pigeon takes over the world",
            coverImage: "Pigeon",
            
            body: "AI Pigeon be whispering in your ear and telling the world is under their control AI Pigeon be whispering in your ear and telling the world is under their control AI Pigeon be whispering in your ear and telling the world is under their control",
            
            author: "Hiba Rehman",
            date: .now
            
        ),
        
        Article(
            
            title: "Local Man Says He'll Start His Diet Tomorrow",
            
            coverImage: "Diet",
            
            body: "After finishing an entire pizza at 11:58pm, local man confidently announced that tomorrow is definitely the day his new lifestyle begins. Experts are not convinced.",
            
            author: "Shuvam Shrestha",
            
            date: .now
            
        ),
        
        Article(
            
            title: "Sydney Train Actually Arrives on Time",
            
            coverImage: "Train",
            
            body: "Commuters across Sydney were left stunned this morning after a train arrived exactly when the timetable said it would. Witnesses described the experience as confusing but pleasant.",
            
            author: "Hiba Rehman",
            
            date: .now
            
        ),
        
        Article(
            
            title: "Cat Accidentally Joins Important Zoom Meeting",
            
            coverImage: "Cat",
            
            body: "A fluffy orange cat has been promoted to senior management after appearing briefly on a video call. Colleagues praised its leadership, confidence and complete lack of PowerPoint slides.",
            
            author: "Shuvam Shrestha",
            
            date: .now
            
        ),
        
        Article(
            
            title: "Scientists Confirm Naps Are Basically Time Travel",
            
            coverImage: "Sleep",
            
            body: "Researchers have confirmed that closing your eyes for ten minutes can somehow result in waking up three hours later with absolutely no idea what year it is.",
            
            author: "Hiba Rehman",
            
            date: .now
            
        ),
        
        Article(
            
            title: "Man Opens Fridge for Fifth Time, Still Finds Nothing New",
            
            coverImage: "Fridge",
            
            body: "Despite checking every shelf multiple times, a local resident remains hopeful that a new snack will spontaneously appear. The fridge has declined to comment.",
            
            author: "Shuvam Shrestha",
            
            date: .now
            
        )
    ]
    
    var body: some View {
        List {
            ForEach(articles) { article in
                ArticleListRow(article: article)
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
