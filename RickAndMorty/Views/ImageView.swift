import SwiftUI
import RickMortySwiftApi

struct ImageView: View {
    var character: RMCharacterModel
    var width: CGFloat
    var height: CGFloat

    var body: some View {
        
        AsyncImage(url: URL(string: character.image)) { image in
            image
                .resizable()
                .scaledToFit()
        } placeholder: {
           ProgressView()
        }
        .frame(width: width, height: height)
        .cornerRadius(13)

    }
    
}
