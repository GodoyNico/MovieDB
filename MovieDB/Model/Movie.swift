//
//  Movie.swift
//  MovieDB
//
//  Created by Nicolas Godoy on 25/03/21.
//

import Foundation
import SwiftUI

struct Movie: Decodable {
    let title: String
    let description: String
    let year: Int
    let genre: String
    let rate: Double?
    let duration: String
    
    var image: Image {
        return Image(title)
    }
    
}
