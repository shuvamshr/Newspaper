//
//  Article.swift
//  Newspaper
//
//  Created by Shuvam Shrestha on 6/11/2026.
//

import Foundation

struct Article: Identifiable {
    var id: UUID = UUID()
    var title: String
    var coverImage: String
    var body: String
    var author: String
    var published: Bool = false
    var date: Date
}
