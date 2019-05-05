//
//  MovieListTableViewCell.swift
//  MovieList
//
//  Created by Jordan Davis on 5/3/19.
//  Copyright © 2019 Jordan Davis. All rights reserved.
//

import UIKit

protocol MovieListTableViewCellDelegate: class {
    func seenButtonWasPressed(on cell: MovieListTableViewCell)
}

class MovieListTableViewCell: UITableViewCell {

    //MARK: -Actions
    
    @IBAction func seenButtonPressed(_ sender: Any) {
        delegate?.seenButtonWasPressed(on: self)
    }
    
    //MARK: -Functions
    func updateViews() {
        guard let movie = movie else { return }
        let seenButtonTitle = movie.hasSeen ? "Not Seen" : "Seen"
        seenButton.setTitle(seenButtonTitle, for: .normal)
    }
    
    
    //MARK: -Properties
    var movie: Movie? {
        didSet {
            updateViews()
        }
    }
    
    @IBOutlet var movieTitleLabel: UILabel!
    @IBOutlet var seenButton: UIButton!
    weak var delegate: MovieListTableViewCellDelegate?

}
