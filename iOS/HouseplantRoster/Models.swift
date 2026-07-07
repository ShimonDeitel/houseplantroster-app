import Foundation

struct PlantItem: Identifiable, Codable, Equatable {
    var id: UUID = UUID()
    var name: String
    var species: String
    var room: String
    var notes: String = ""
    var dateAdded: Date = Date()
    var isFavorite: Bool = false
}
