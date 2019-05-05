//
//  MovieList.swift
//  MovieList
//
//  Created by Jordan Davis on 5/3/19.
//  Copyright © 2019 Jordan Davis. All rights reserved.
//

import Foundation

struct Movie {
    
    var movie: String
    var hasSeen: Bool
    
    init(movie:String, hasSeen: Bool = false) {
        self.movie = movie
        self.hasSeen = hasSeen
    }
}
