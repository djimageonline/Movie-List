//
//  MovieListRow.swift
//  Movie List
//
//  Created by Johnny Proano on 9/19/24.
//

import SwiftUI

struct MovieListRow: View {
    
    var movieItem: MovieItem
    
    var body: some View {

        VStack(alignment: .center){
            Image(movieItem.image)
                .resizable()
                .aspectRatio(contentMode: .fill)
            Text(movieItem.title)
            .listRowSeparator(.hidden)
        }
        .padding(.bottom, 20)
        .listRowBackground(Color.clear)

    }
}

#Preview {
    MovieListRow(movieItem: MovieItem(image: "homealone", title: "Home Alone"))
}
