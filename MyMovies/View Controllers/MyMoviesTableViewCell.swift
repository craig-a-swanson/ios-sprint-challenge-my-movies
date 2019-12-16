//
//  MyMoviesTableViewCell.swift
//  MyMovies
//
//  Created by Craig Swanson on 12/15/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MyMoviesTableViewCell: UITableViewCell {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var watchedButton: UIButton!
    
    var movie: Movie? {
        didSet {
            updateViews()
        }
    }
    
    @IBAction func watchedButtonPressed(_ sender: UIButton) {
    }
    
    
    private func updateViews() {
        guard let movie = movie else { return }
        titleLabel.text = movie.title
        
        if movie.hasWatched {
            watchedButton.titleLabel?.text = "Watched"
        } else {
            watchedButton.titleLabel?.text = "Unwatched"
        }
    }

}