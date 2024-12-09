import SwiftUI


struct GenderTagView: View {
    //MARK: -PROPERTIES
    let genderText: String
    
    private var  genderColor: Color{
        switch genderText{
        case "Male":
            return Color.blue
        case "Female":
            return Color.pink
        default:
            return Color.purple
        }
    }
    
    private var genderBackground: Color{
        genderColor.opacity(0.2)
    }
    
    //MARK: -BODY
    var body: some View {
        Text(genderText)
            .padding(.horizontal, 16)
            .padding(.vertical, 4)
            .foregroundColor(genderColor)
            .background(genderBackground)
            .cornerRadius(20)
    }
}

