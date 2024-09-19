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
        
//        ZStack {
//            Color.black
//                .ignoresSafeArea()
//            
//            List(movies) { m in
//                
//                VStack (alignment: .center) {
//                    Image(m.image)
//                        .resizable()
//                        .aspectRatio(contentMode: .fill)
//                    Text(m.title)
//                        .foregroundStyle(Color.white)
//                }
//                .padding(.bottom, 20)
//                .listRowBackground(Color.clear)
//            }
//            
//            .listStyle(.plain)
//            .onAppear {
//                movies = DataService().getData()
//            }
//        }
        
        ZStack {
            Color.black
                .ignoresSafeArea()
            
            
            List(movies) {movie in
                VStack(alignment: .center){
                    Image(movie.image)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                    Text(movie.title)
                    .listRowSeparator(.hidden)
                }
                .padding(.bottom, 20)
                .listRowBackground(Color.clear)

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
