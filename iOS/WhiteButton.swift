//
//  WhiteButton.swift
//  BuildNetflexApp
//
//  Created by Clinton Johnson on 11/15/21.
//

import SwiftUI

struct WhiteButton: View {
    var text: String
    var imageName: String
    
    var action: () -> Void
    
    var body: some View {
        Button(action: action) {
            HStack {
                Image(systemName: imageName)
            }
        }
    }
}

struct WhiteButton_Previews: PreviewProvider {
    static var previews: some View {
        WhiteButton(text: "Play", imageName: "play.fill") {
            // action
        }
    }
}
