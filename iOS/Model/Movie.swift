//
//  Movie.swift
//  BuildNetflexApp
//
//  Created by Clinton Johnson on 11/12/21.
//

import Foundation


struct Movie: Identifiable {
    var id: String
    var name: String
    var thumbnailURL: URL
    
    var categories: [String]
}
