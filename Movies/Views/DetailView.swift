//
//  DetailView.swift
//  Movies
//
//  Created by Gabriela Zorzo on 26/03/21.
//

import SwiftUI

struct DetailView: View {
    let movie: Movie
    
    var body: some View {
        VStack{               
            Divider()
            
            ScrollView{
                VStack (alignment: .leading, spacing: 20){
                    
                    HStack{
                        Image(movie.posterName)
                            .resizable()
                            .cornerRadius(20)
                            .frame(width: 150, height: 220)
                        
                        VStack (alignment: .leading, spacing: 10){
                            Text(movie.title)
                                .bold()
                                .font(/*@START_MENU_TOKEN@*/.title2/*@END_MENU_TOKEN@*/)
                            Text(movie.category)
                                .foregroundColor(.gray)
                            HStack {
                                Image(systemName: "star")
                                Text(String(movie.rate))
                            }
                            .font(.subheadline)
                            .foregroundColor(.gray)
                        }
                    }
                    
                    VStack (alignment: .leading, spacing: 20){
                        Text("Movie Details")
                            .font(.subheadline)
                            .bold()
                        Text(movie.details)
                            .font(.subheadline)
                            .foregroundColor(.gray)
                    }
                }
                .padding()
            }
        }
        .navigationTitle("Movie Details")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            ForEach(Movie.movie) { movie in
            DetailView(movie: movie)
            }
        }
    }
}
