import SwiftUI

struct ButtonDismissView: View {
    //MARK: - PROPERTIES
    @Environment (\.dismiss) var dismiss
 
    //MARK: - BODY
    var body: some View {
        Button {
            dismiss()
        } label: {
            ZStack{
                Circle()
                    .fill(.black)
                    .opacity(0.2)
                    .frame(width: 33, height: 45)
                Image(systemName: "chevron.left")
                    .foregroundStyle(.white)
                    .fontWeight(.medium)
            }
        }
    }
}

struct ButtonDismissView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonDismissView()
    }
}
