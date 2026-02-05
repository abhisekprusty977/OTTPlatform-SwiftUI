import Foundation
@MainActor
class MovieViewModel: ObservableObject {
    @Published var upcomingMovies: [Movies] = []

    func loadUpcomingMovies() async {
        do {
            self.upcomingMovies = try await ApiManager.shared.fetchMovies(from: .upcoming)
        } catch {
            print("Failed to fetch upcoming movies: \(error)")
        }
    }
}
