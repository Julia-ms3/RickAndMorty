import RickMortySwiftApi
import Foundation

@MainActor
class ViewModel: ObservableObject{
    @Published var characters: [RMCharacterModel] = []
    @Published  var currentPage = 1
    @Published  var isLoading = false
    private let client = RMClient()
    private let totalPage = 42
    
    
    func fetchData(){
        guard !isLoading else { return }
        isLoading = true
        
        Task {
            do {
                try await Task.sleep(nanoseconds: 1 * 1_000_000_000)
                
                let character = try await client.character().getCharactersByPageNumber(pageNumber: currentPage)
                self.characters.append(contentsOf: character)
                isLoading = false
                print("loading complete")
                
            } catch (let error) {
                print(error)
                isLoading = false
            }
        }
    }
    
    func nextPage(){
        guard !isLoading else { return }
        
        if currentPage < totalPage  {
            self.currentPage += 1
            fetchData()
        }
    }
    
}
