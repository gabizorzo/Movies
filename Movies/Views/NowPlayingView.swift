//
//  NowPlayingView.swift
//  Movies
//
//  Created by Gabriela Zorzo on 26/03/21.
//

import SwiftUI

struct NowPlayingView: View {
    
    var body: some View {
        VStack (spacing: 20){
            HStack{
                Text("Now Playing")
                    .bold()
                Spacer()
                Text("See All")
                    .foregroundColor(.gray)
            }
            
            ScrollView(.horizontal){
                HStack(spacing: 10){
                    ForEach(Movie.movie) { movie in
                        NavigationLink (destination: DetailView(movie: movie)){
                        MoviePosterView(movie: movie)
                        }
                    }
                }
            }
        }
    }
}

struct NowPlayingView_Previews: PreviewProvider {
    static var previews: some View {
        NowPlayingView()
    }
}
