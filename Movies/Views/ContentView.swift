//
//  ContentView.swift
//  Movies
//
//  Created by Gabriela Zorzo on 25/03/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack(alignment: .leading, spacing: 10){
                Divider()
                NowPlayingView()
                Divider()
                PopularMoviesView()
                
            }
        .padding()
        .navigationTitle("MoviesDB")
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
