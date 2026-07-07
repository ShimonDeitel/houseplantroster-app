import SwiftUI

/// Unique palette for Houseplant Roster — evokes the collector & inventory utilities domain of plants.
enum Theme {
    static let accent = Color(hex: "#4C8C3C")
    static let background = Color(hex: "#0F140F")
    static let cardBackground = Color(hex: "#0F140F").opacity(0.6)
    static let ink = Color(red: 0.92, green: 0.91, blue: 0.89)
    static let inkMuted = Color(red: 0.92, green: 0.91, blue: 0.89).opacity(0.6)

    static var titleFont: Font { .custom("New York", size: 28).weight(.bold) }
    static var headlineFont: Font { .custom("New York", size: 18).weight(.semibold) }
    static var bodyFont: Font { .system(size: 15) }
}

extension Color {
    init(hex: String) {
        let s = hex.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        var v: UInt64 = 0
        Scanner(string: s).scanHexInt64(&v)
        let r = Double((v >> 16) & 0xFF) / 255.0
        let g = Double((v >> 8) & 0xFF) / 255.0
        let b = Double(v & 0xFF) / 255.0
        self.init(red: r, green: g, blue: b)
    }
}
