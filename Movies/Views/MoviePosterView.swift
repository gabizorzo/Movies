//
//  MoviePosterView.swift
//  Movies
//
//  Created by Gabriela Zorzo on 25/03/21.
//

import SwiftUI

struct MoviePosterView: View {
    let movie: Movie
    
    var body: some View {
        VStack (alignment: .leading, spacing: 10) {
            Image(movie.posterName)
                .resizable()
                .cornerRadius(20)
            Text(movie.title)
                .bold()
                .foregroundColor(.black)
            HStack {
                Image(systemName: "star")
                Text(String(movie.rate))
            }
            .font(.subheadline)
            .foregroundColor(.gray)
        }
        .frame(width: 150, height: 300, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
    }
}

struct MoviePosterView_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            ForEach(Movie.movie) { movie in
            MoviePosterView(movie: movie)
            }
        }
    }
}
