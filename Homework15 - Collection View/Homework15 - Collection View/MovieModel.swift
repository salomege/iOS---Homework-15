//
//  MovieModel.swift
//  Homework15 - Collection View
//
//  Created by salome on 04.11.23.
//
import UIKit

import Foundation

enum MovieCategory {
    case Act
    case Adventure
    case Horror
    case Comedy
    
}

class Movie {
    let image: UIImage
    let name: String
    let category: MovieCategory
    
    init(image: UIImage, name: String, category: MovieCategory) {
        self.image = image
        self.name = name
        self.category = category
        
    }
}
