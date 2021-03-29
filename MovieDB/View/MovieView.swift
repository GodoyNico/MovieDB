//
//  MovieView.swift
//  MovieDB
//
//  Created by Nicolas Godoy on 25/03/21.
//

import SwiftUI

struct MovieView: View {
    var movie: Movie
    
    var body: some View {
        VStack(alignment: .leading) {
            movie.image
                .resizable()
                .frame(width: 170, height: 230)
                .aspectRatio(contentMode: .fit)
                .cornerRadius(15)
            
            Text(movie.title)
                //.frame(width: 120)
                .lineLimit(1)
            
            HStack() {
                Image(systemName: "star")
                Text(String(format: "%.1f", movie.rate ?? 0.0))
            }
            .font(.subheadline)
            .foregroundColor(.secondary)
        }
    }
}

struct MovieView_Previews: PreviewProvider {
    static var previews: some View {
        MovieView(movie: movies[0])
    }
}
