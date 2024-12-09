import SwiftUI
import RickMortySwiftApi

struct MainContentView: View {
    @StateObject var viewModel = ViewModel()
    
    
    var body: some View {
        NavigationStack {
            ScrollViewReader { scrollProxy in
                ScrollView(showsIndicators: false) {
                    LazyVStack {
                        ForEach(viewModel.characters) { character in
                            NavigationLink(destination: DetailCard(character: character)) {
                                Card(character: character)
                            }
                            .buttonStyle(.plain)
                            .id(character.id)
                            .onAppear{
                                if character.id == viewModel.characters.last?.id{
                                    viewModel.nextPage()
                                }
                            }
                        }
                        .padding(1)
                        if viewModel.isLoading {
                            ProgressView()
                                .progressViewStyle(CircularProgressViewStyle(tint: .red))
                                .padding()
                        }
                        
                    }
                    
                    .navigationTitle("Characters")
                    .padding()
                }
                
                
            }
            .background(.background)
            .refreshable {
                viewModel.fetchData()
            }
        }
        .onAppear{
            if viewModel.characters.isEmpty{
                viewModel.fetchData()
            }
            
        }
        
        
        
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainContentView()
    }
}
