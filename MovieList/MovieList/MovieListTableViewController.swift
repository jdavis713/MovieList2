//
//  MovieListTableViewController.swift
//  MovieList
//
//  Created by Jordan Davis on 5/3/19.
//  Copyright © 2019 Jordan Davis. All rights reserved.
//

import UIKit

protocol MovieEnteredDelegate: class {
    func movieWasEntered(movie: Movie)
}
class MovieListTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movieListController.movies.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MovieListCell", for: indexPath)

        let movie = movieListController.movies[indexPath.row]
        cell.textLabel?.text = movie.title

        return cell
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */


    
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "AddMovie" {
            guard let addNewMovieVC = segue.destination as? AddNewMovieViewController,
                let indexPath = tableView.indexPathForSelectedRow else { return }
            addNewMovieVC.movie = movieListController.movies[indexPath.row]
        }
    }
    
    
    //MARK: -Properties
    var movieListController = MovieListController()
    
}
