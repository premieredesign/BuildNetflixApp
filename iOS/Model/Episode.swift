//
//  Episode.swift
//  BuildNetflexApp
//
//  Created by Clinton Johnson on 12/11/21.
//

import Foundation


struct Episode: Identifiable {
    var id = UUID().uuidString
    
    var name: String
    var season: Int
    var thumbnailImageURLString: String
    var description: String
    var length: Int
    
    var thumbnailURL: URL {
        return URL(string: thumbnailImageURLString)!
    }
}
