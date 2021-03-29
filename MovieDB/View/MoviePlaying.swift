//
//  MoviePlaying.swift
//  MovieDB
//
//  Created by Nicolas Godoy on 25/03/21.
//

import SwiftUI

struct MoviePlaying: View {
    var body: some View {
        VStack {
            HStack {
                Text("Now Playing")
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                Spacer()
                Text("See all")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    NavigationLink(
                        destination: DetailView(movie: movies[2]),
                        label: {
                            MovieView(movie: movies[2])
                        })
                    NavigationLink(
                        destination: DetailView(movie: movies[3]),
                        label: {
                            MovieView(movie: movies[3])
                        })
                    NavigationLink(
                        destination: DetailView(movie: movies[11]),
                        label: {
                            MovieView(movie: movies[11])
                        })
                    NavigationLink(
                        destination: DetailView(movie: movies[12]),
                        label: {
                            MovieView(movie: movies[12])
                        })
                    NavigationLink(
                        destination: DetailView(movie: movies[13]),
                        label: {
                            MovieView(movie: movies[13])
                        })
                }
            }
        }
    }
}

struct MoviePlaying_Previews: PreviewProvider {
    static var previews: some View {
        MoviePlaying()
    }
}
