//
//  HomeVM.swift
//  BuildNetflexApp
//
//  Created by Clinton Johnson on 11/12/21.
//

import Foundation

class HomeVM: ObservableObject {
    @Published var movies: [String: [Movie]] = [:]
    
    public var allCategories: [String] {
         movies.keys.map({String($0)})
    }
    
    func getMovie(forCat cat: String) -> [Movie] {
        return movies[cat] ?? []
    }
    
    init() {
        setupMovies()
    }
    
    func setupMovies() {
        movies["Trending Now"] = exampleMovies
        movies["Standup Comedy"] = exampleMovies.shuffled()
        movies["Watch It Again"] = exampleMovies.shuffled()
        movies["New Releases"] = exampleMovies.shuffled()
    }
}

