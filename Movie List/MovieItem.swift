//
//  MovieItem.swift
//  Movie List
//
//  Created by Johnny Proano on 9/19/24.
//

import Foundation

struct MovieItem: Identifiable {
    var id: UUID = UUID()
    var image: String
    var title: String
}
