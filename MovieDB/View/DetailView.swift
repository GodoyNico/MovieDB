//
//  DetailView.swift
//  MovieDB
//
//  Created by Nicolas Godoy on 26/03/21.
//

import SwiftUI

struct DetailView: View {
    var movie: Movie
    
    var body: some View {
        ScrollView {
                    VStack(alignment: .leading) {
                        HStack {
                            movie.image
                                .resizable()
                                .frame(width: 140, height: 200)
                                .cornerRadius(15)
                                .padding(.trailing, 8)
                            
                            VStack(alignment: .leading) {
                                Text(movie.title)
                                    .font(.title3)
                                    .padding(.top, 30)
                                
                                Text(movie.genre)
                                    .font(.subheadline)
                                    .foregroundColor(.secondary)
                                    .padding(.top, 1)
                                
                                HStack() {
                                    Image(systemName: "star")
                                    Text(String(format: "%.1f", movie.rate ?? 0.0))
                                }
                                .font(.subheadline)
                                .foregroundColor(.secondary)
                                .padding(.top, 1)
                            }
                        }
                        
                        Text("Overview")
                            .font(.headline)
                            .padding(.vertical, 10)
                        
                        Text(movie.description)
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                    }
                    .padding()
                }
                .navigationBarTitle("Movie Details", displayMode: .inline)
            }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(movie: movies[0])
    }
}
