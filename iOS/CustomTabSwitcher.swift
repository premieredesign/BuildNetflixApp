//
//  CustomTabSwitcher.swift
//  BuildNetflexApp (iOS)
//
//  Created by Clinton Johnson on 12/31/21.
//

import SwiftUI

struct CustomTabSwitcher: View {
    @State private var currentTab: CustomTab = .episode
    
    var tabs: [CustomTab]
    var movie: Movie
    
    func widthForTab(_ tab: CustomTab) -> CGFloat {
        let string = tab.rawValue
        return string.widthOfString(usingFont: .system(size: 16, weight: .bold))     
    }
    
    var body: some View {
        VStack {
            // Custom tab picker
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 20) {
                    ForEach(tabs, id: \.self) { tab in
                        VStack {
                            // Red Bar
                            Rectangle()
                                .frame(width: widthForTab(tab),height: 6)
                                .foregroundColor(tab == currentTab ? Color.red : Color.clear)
                            
                            // Button
                            Button {
                                // Nothing now
                                currentTab = tab
                            } label: {
                                Text(tab.rawValue)
                                    .font(.system(size: 16, weight: .bold))
                                    .foregroundColor(tab == currentTab ? Color.white : Color.gray)
                            }
                            .buttonStyle(PlainButtonStyle())
                            .frame(width: widthForTab(tab), height: 30)

                     
                        }
                    }
                }
            }
            
            switch currentTab {
            case .episode:
                SmallVerticalButton(text: "TEST", isOnImage: "", isOffImage: "", isOn: true) {
                    // 
                }
            case .trailers:
                Text("Trailers")
            case .more:
                MoreLikeThis(movies: movie.moreLikeThisMovies)
            }
        }
        .foregroundColor(.white)
    }
}

struct CustomTabSwitcher_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            CustomTabSwitcher(tabs: [.episode, .more, .trailers], movie: exampleMovie5)
        }
    }
}
