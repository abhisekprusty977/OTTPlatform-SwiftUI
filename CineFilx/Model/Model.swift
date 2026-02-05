import Foundation

struct Movie: Identifiable {
    let id = UUID()
    let title: String
    let posterName: String
    let genre: String
}

struct MovieUpcoming: Identifiable {
    let id = UUID()
    let title: String
    let posterURL: String
    let releaseDate: String
    let genre: String
}




