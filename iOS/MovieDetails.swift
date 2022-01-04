//
//  MovieDetails.swift
//  BuildNetflexApp
//
//  Created by Clinton Johnson on 11/17/21.
//

import SwiftUI

struct MovieDetails: View {
    var movie: Movie
    let screen = UIScreen.main.bounds
    
    var body: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                HStack {
                    Spacer()
                    Button {
                        // Action
                    } label: {
                        Image(systemName: "xmark.circle")
                            .font(.system(size: 28))
                    }
                }
                .padding(.horizontal, 22)
                
                ScrollView(.vertical, showsIndicators: false) {
                    VStack {
                        StandardHomeMovie(movie: movie)
                            .frame(width: screen.width / 2.5)
                        
                        MovieInfoSubheadline(movie: movie)
                        
                        if movie.promotionalHeadline != nil {
                            Text(movie.promotionalHeadline!)
                                .bold()
                                .font(.headline)
                        }
                        
                        PlayButton(text: "Play", imageName: "play.fill", backgroundColor: .red) {
                            
                        }
                        
                        // Current Episode Information
                        CurrentEpisodeInformation(movie: movie)
                       
                        CastInfo(movie: movie)
                        
                        HStack(spacing: 60) {
                            SmallVerticalButton(text: "My List", isOnImage: "checkmark", isOffImage: "plus", isOn: true) {
                                // Something here
                            }
                            SmallVerticalButton(text: "Rate", isOnImage: "hand.thumbsup.fill", isOffImage: "hand.thumbsup", isOn: true) {
                                // Something here
                            }
                            SmallVerticalButton(text: "Share", isOnImage: "square.and.arrow.up", isOffImage: "square.and.arrow.up", isOn: true) {
                                // Something here
                            }
                            Spacer()
                        }
                        .padding(.leading, 20)
                        
//                        CustomTabSwitcher()
                        
                    }
                    .padding(.horizontal, 10)
                }
                
                Spacer()
            }
            .foregroundColor(.white)
            
        }
        
    }
}

struct MovieDetails_Previews: PreviewProvider {
    static var previews: some View {
        MovieDetails(movie: exampleMovie1)
    }
}

enum CustomTab: String {
    case episode = "EPISODES"
    case trailers = "TRAILERS & MORE"
    case more = "MORE LIKE THIS"
}

struct MovieInfoSubheadline: View {
    var movie: Movie
    var body: some View {
        HStack(spacing: 20) {
            Image(systemName: "hand.thumbsup.fill")
                .foregroundColor(.white)
            Text(String(movie.year))
            
            RatingView(rating: movie.rating)
            
            Text(movie.numberOfSeasonDisplay)
        }
        .foregroundColor(.gray)
        .padding(.vertical, 6)
    }
}


struct RatingView: View {
    var rating: String
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(.gray)
            
            Text(rating)
                .foregroundColor(.white)
                .font(.system(size: 12))
                .bold()
        }
        .frame(width: 50, height: 20)
    }
}

struct CastInfo: View {
    var movie: Movie
    var body: some View {
        VStack(spacing: 3) {
            HStack {
                Text("Cast: \(movie.cast)")
                Spacer()
            }
            HStack {
                Text("Creators: \(movie.creators)")
                Spacer()
            }
        }
        .font(.caption)
        .foregroundColor(.gray)
        .padding(.vertical, 10)
    }
}

struct CurrentEpisodeInformation: View {
    var movie: Movie
    var body: some View {
        Group {
            HStack {
                Text(movie.episodeInfoDisplay)
                    .bold()
                Spacer()
            }
            .padding(.vertical, 4)
            HStack {
                Text(movie.episodeDescriptionDisplay)
                    .font(.subheadline)
                Spacer()
            }
        }
    }
}
