//
//  MovieListView.swift
//  Movies
//
//  Created by Gabriela Zorzo on 25/03/21.
//

import SwiftUI

struct MovieListView: View {
    let movie: Movie
    
    var body: some View {
        HStack (spacing: 10) {
            Image(movie.posterName)
                .resizable()
                .cornerRadius(20)
                .frame(width: 90, height: 140)
            VStack (alignment: .leading, spacing: 10){
                Text(movie.title)
                    .bold()
                    .foregroundColor(.black)
                Text(movie.description)
                    .font(.subheadline)
                    .foregroundColor(.gray)
                    .frame(maxWidth: 300)
                HStack {
                    Image(systemName: "star")
                    Text(String(movie.rate))
                }
                .font(.subheadline)
                .foregroundColor(.gray)
            }
        }
        .aspectRatio(contentMode: .fit)
    }
}

struct MovieListView_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            ForEach(Movie.movie) { movie in
            MovieListView(movie: movie)
            }
        }
    }
}
