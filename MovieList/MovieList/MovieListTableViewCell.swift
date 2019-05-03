//
//  MovieListTableViewCell.swift
//  MovieList
//
//  Created by Jordan Davis on 5/3/19.
//  Copyright © 2019 Jordan Davis. All rights reserved.
//

import UIKit

class MovieListTableViewCell: UITableViewCell {

    //MARK: -Actions
    
    
    
    
    //MARK: -Functions
    private func updateViews() {
        guard let movie = movie else { return }
        
        self.movieTitleLabel.text = movie.title
    }
    
    
    //MARK: -Properties
    
    @IBOutlet var movieTitleLabel: UILabel!
    
    var movie: Movie? {
        didSet {
            updateViews()
        }
    }

}
