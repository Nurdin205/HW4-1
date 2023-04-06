//
//  Model.swift
//  HW4-1
//
//  Created by cpu on 5/4/23.
//

import Foundation
// MARK: - NewsData
struct NewsData: Codable {
    let status: String?
    let totalResults: Int?
    let articles: [Article]?
    // MARK: - Article
    struct Article: Codable {
        let source: Source?
        let author, title, description: String?
        let url: String?
        let urlToImage: String?
        let publishedAt: Date?
        let content: String?
    }
    // MARK: - Source
    struct Source: Codable {
        let id: ID?
        let name: Name?
    }
    enum ID: String, Codable {
        case techcrunch = "techcrunch"
    }
    enum Name: String, Codable {
        case techCrunch = "techCrunch"
    }
}
