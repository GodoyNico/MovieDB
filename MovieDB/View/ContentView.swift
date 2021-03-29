//
//  ContentView.swift
//  MovieDB
//
//  Created by Nicolas Godoy on 25/03/21.
//

import SwiftUI

struct ContentView: View {
    @State var searchText: String = ""
    
    //var movie: Movie
    
    var body: some View {
        NavigationView {
            List {
                TextField("Search", text: $searchText)
                    .font(.system(.subheadline))
                    .cornerRadius(5)
                    .padding(8)
                    .background(Color.init(white: 0.8, opacity: 0.3))
                
                Section{
                    MoviePlaying()
                        .padding(.vertical)
                }
                
                Section{
                    PopularMovie()
                        .padding(.vertical)
                }
            }
            .navigationTitle("MovieDB")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
