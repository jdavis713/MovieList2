//
//  MovieListController.swift
//  MovieList
//
//  Created by Jordan Davis on 5/3/19.
//  Copyright © 2019 Jordan Davis. All rights reserved.
//

import Foundation

class MovieListController {
    
    func createMovie(with title: String) {
        let movie = Movie(movie: title)
        movies.append(movie)
    }
    
    
    
    //MARK: -Properties
    
    var movies: [Movie] = []
}
