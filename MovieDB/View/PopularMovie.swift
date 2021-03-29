//
//  PopularMovie.swift
//  MovieDB
//
//  Created by Nicolas Godoy on 25/03/21.
//

import SwiftUI

struct PopularMovie: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Popular Movies")
                .font(.title2)
            
            ScrollView {
                VStack {
                    NavigationLink(
                        destination: DetailView(movie: movies[0]),
                        label: {
                            MovieWDetail(movie: movies[0])
                    })
                
                    NavigationLink(
                        destination: DetailView(movie: movies[1]),
                        label: {
                            MovieWDetail(movie: movies[1])
                    })
                    NavigationLink(
                        destination: DetailView(movie: movies[2]),
                        label: {
                            MovieWDetail(movie: movies[2])
                    })
                    NavigationLink(
                        destination: DetailView(movie: movies[3]),
                        label: {
                            MovieWDetail(movie: movies[3])
                    })
                    NavigationLink(
                        destination: DetailView(movie: movies[4]),
                        label: {
                            MovieWDetail(movie: movies[4])
                    })
                    NavigationLink(
                        destination: DetailView(movie: movies[5]),
                        label: {
                            MovieWDetail(movie: movies[5])
                    })
                    NavigationLink(
                        destination: DetailView(movie: movies[6]),
                        label: {
                            MovieWDetail(movie: movies[6])
                    })
                    NavigationLink(
                        destination: DetailView(movie: movies[7]),
                        label: {
                            MovieWDetail(movie: movies[7])
                    })
                    NavigationLink(
                        destination: DetailView(movie: movies[8]),
                        label: {
                            MovieWDetail(movie: movies[8])
                    })
                }
            }
        }
    }
}

struct PopularMovie_Previews: PreviewProvider {
    static var previews: some View {
        PopularMovie()
    }
}
