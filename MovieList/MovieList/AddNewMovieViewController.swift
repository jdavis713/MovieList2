//
//  AddNewMovieViewController.swift
//  MovieList
//
//  Created by Jordan Davis on 5/3/19.
//  Copyright © 2019 Jordan Davis. All rights reserved.
//

import UIKit

class AddNewMovieViewController: UIViewController {

    //MARK: - Actions
    @IBAction func addMovieButtonPressed(_ sender: Any) {
        guard let movie = movieTitleTextField.text, !title!.isEmpty else { return }
        movieListController.createMovie(with: movie)
        navigationController?.popViewController(animated: true)
    }

    //MARK: -Properties
    
    let movieListController = MovieListController!
    
    @IBOutlet var movieTitleTextField: UITextField!
    
}
