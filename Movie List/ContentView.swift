//
//  ContentView.swift
//  Movie List
//
//  Created by Johnny Proano on 9/19/24.
//

import SwiftUI

struct ContentView: View {
    
   @State var movies: [MovieItem] = [MovieItem]()
                               
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            
            List(movies) {movie in
                MovieListRow(movieItem: movie)
            }
            .listStyle(.plain)
            .onAppear{
                movies = DataService().getData()
            }
            .foregroundStyle(.white)
        }
    }
}

#Preview {
    ContentView()
}
