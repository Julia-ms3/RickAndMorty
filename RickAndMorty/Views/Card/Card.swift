import SwiftUI
import RickMortySwiftApi

struct Card: View {
    var character: RMCharacterModel
    
    var body: some View {
        HStack {
            ImageView(character: character, width: 99, height: 99)
                .padding(8)
            
            VStack(alignment: .leading){
                HStack{
                    Text(character.name)
                        .font(.system(size: 18, weight: .bold))
                    
                    Spacer()
                    
                    GenderTagView(genderText: character.gender)
                }
                Text(character.location.name)
                    .font(.system(size: 12, weight: .light))
                    .foregroundColor(.gray)
                    .lineLimit(3)
            }
            .padding(.vertical, 8)
            .padding(.trailing, 16)
        }
        .frame(maxWidth: .infinity, maxHeight: 115)
        .clipShape(RoundedRectangle(cornerRadius: 13))
        .overlay(
            RoundedRectangle(cornerRadius: 13)
                .stroke(Color.border, lineWidth: 1)
        )
    }
}


