//
//  MovieWDetail.swift
//  MovieDB
//
//  Created by Nicolas Godoy on 25/03/21.
//

import SwiftUI

struct MovieWDetail: View {
    var movie: Movie
    
    var body: some View {
        HStack {
            movie.image
                .resizable()
                .cornerRadius(15)
                .frame(width: 80, height: 120)
                .aspectRatio(contentMode: .fill)
            
            VStack(alignment: .leading) {
                Text(movie.title)
                
                Text(movie.description)
                    .font(.subheadline)
                    .padding(.vertical, 1)
                    .foregroundColor(.secondary)
                    .lineLimit(3)
                
                HStack() {
                    Image(systemName: "star")
                    Text(String(format: "%.1f", movie.rate ?? 0.0))
                }
                .font(.subheadline)
                .foregroundColor(.secondary)
            }
        }
    }
}

struct MovieWDetail_Previews: PreviewProvider {
    static var previews: some View {
        MovieWDetail(movie: movies[0])
    }
}
