//
//  PopularMoviesView.swift
//  Movies
//
//  Created by Gabriela Zorzo on 26/03/21.
//

import SwiftUI

struct PopularMoviesView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 20){
            Text("Popular Movies")
                .bold()
            ScrollView {
                VStack {
                    ForEach(Movie.movie) { movie in
                        NavigationLink (destination: DetailView(movie: movie)){
                        MovieListView(movie: movie)
                        }
                    }
                }
            }
        }
    }
}

struct PopularMoviesView_Previews: PreviewProvider {
    static var previews: some View {
        PopularMoviesView()
    }
}
