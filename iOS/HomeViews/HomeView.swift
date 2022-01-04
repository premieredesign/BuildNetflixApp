//
//  HomeView.swift
//  BuildNetflexApp
//
//  Created by Clinton Johnson on 11/17/21.
//

import SwiftUI

struct HomeView: View {
    var vm = HomeVM()
    let screen = UIScreen.main.bounds
    
    var body: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            // Main VStack
            ScrollView(showsIndicators:false) {
                LazyVStack {
                    TopRowButtons()
                    
                    TopMoviePreview(movie: exampleMovie1)
                        .frame(width: screen.width)
                        .padding(.top, -110)
                        .zIndex(-1)
                    
                    ForEach(vm.allCategories, id: \.self) {category in
                        VStack {
                            HStack {
                                Text(category)
                                    .font(.title3)
                                    .bold()
                                Spacer()
                            }
                            ScrollView(.horizontal, showsIndicators: false) {
                                LazyHStack {
                                    ForEach(vm.getMovie(forCat: category)) { movie in
                                        StandardHomeMovie(movie: movie)
                                            .frame(width: 100, height: 200)
                                            .padding(.horizontal, 20)
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        .foregroundColor(.white)
    }
}


struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

struct TopRowButtons: View {
    var body: some View {
        HStack() {
            Button {
                // Action
            } label: {
                Image("netflix_logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 50)
            }
            
            Spacer()
            Button {
                // Action
            } label: {
                Text("TV Shows")
            }
            
            Spacer()
            Button {
                // Action
            } label: {
                Text("Movies")
            }
            
            Spacer()
            Button {
                // Action
            } label: {
                Text("My List")
            }
            
        }
        .padding(.leading, 10)
        .padding(.trailing, 30)
    }
}
