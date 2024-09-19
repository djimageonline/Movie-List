//
//  DataService.swift
//  Movie List
//
//  Created by Johnny Proano on 9/19/24.
//

import Foundation

struct DataService {
    func getData() -> [MovieItem] {

        return [
            MovieItem(image: "captainamerica", title: "Captain America"),
            MovieItem(image: "dune", title: "Dune"),
            MovieItem(image: "homealone", title: "Home Alone"),
            MovieItem(image: "mariobros", title: "Mario Bros"),
            MovieItem(image: "missionimpossible", title: "Mission Impossible")
        ]
    }
}
