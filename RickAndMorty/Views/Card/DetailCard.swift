import SwiftUI
import RickMortySwiftApi

struct DetailCard: View {
    let character: RMCharacterModel
    
    var body: some View {
        VStack {
            ImageView(character: character, width: 355, height: 343)
                .padding(.top, 16)
                .padding(.bottom, 24)
                .padding(.horizontal, 16)
            
            VStack(alignment: .leading, spacing: 12){
                HStack {
                    Text(character.name)
                        .font(.system(size: 24, weight: .bold))
                    
                    Spacer()
                    
                    GenderTagView(genderText: character.gender)
                }
                .padding(.bottom, 16)
                
                CharacteristicView(title: "Species", value: character.species)
                CharacteristicView(title: "Status", value: character.status)
                CharacteristicView(title: "Date of Birth", value: character.created.formatDate())
                
            }
            .padding(.horizontal, 16)
            
            Spacer()
        }
        .navigationTitle("Character Page")
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarBackButtonHidden(true)
        .toolbar{
            ToolbarItem(placement: .navigationBarLeading ) {
                ButtonDismissView()
            }
        }
    }
}


