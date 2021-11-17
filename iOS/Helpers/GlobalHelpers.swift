//
//  GlobalHelpers.swift
//  BuildNetflexApp
//
//  Created by Clinton Johnson on 11/12/21.
//

import Foundation
import SwiftUI

let exampleMovie1 = Movie(id: UUID().uuidString, name: "DARK", thumbnailURL: URL(string: "https://picsum.photos/200/300")!, categories: ["Dystophian", "Exciting", "Suspensful", "Sci-fi"])
let exampleMovie2 = Movie(id: UUID().uuidString, name: "Travelers", thumbnailURL: URL(string: "https://picsum.photos/200/301")!, categories: ["Dystophian", "Exciting", "Suspensful", "Sci-fi"])
let exampleMovie3 = Movie(id: UUID().uuidString, name: "Community", thumbnailURL: URL(string: "https://picsum.photos/200/302")!, categories: ["Dystophian", "Exciting", "Suspensful", "Sci-fi"])
let exampleMovie4 = Movie(id: UUID().uuidString, name: "Alone", thumbnailURL: URL(string: "https://picsum.photos/200/303")!, categories: ["Dystophian", "Exciting", "Suspensful", "Sci-fi"])
let exampleMovie5 = Movie(id: UUID().uuidString, name: "Hannibal", thumbnailURL: URL(string: "https://picsum.photos/200/304")!, categories: ["Dystophian", "Exciting", "Suspensful", "Sci-fi"])
let exampleMovie6 = Movie(id: UUID().uuidString, name: "After Life", thumbnailURL: URL(string: "https://picsum.photos/200/305")!, categories: ["Dystophian", "Exciting", "Suspensful", "Sci-fi"])

let exampleMovies: [Movie] = [exampleMovie1, exampleMovie2, exampleMovie3, exampleMovie4, exampleMovie5, exampleMovie6]


extension LinearGradient {
    static let blackOpacityGradient = LinearGradient(gradient:
                                                        Gradient(colors: [Color.black.opacity(0.0), Color.black.opacity(0.95)]),
                                                     startPoint: .top,
                                                     endPoint: .bottom
    )
}
