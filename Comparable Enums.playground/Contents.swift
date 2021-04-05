import UIKit

enum PlayerRanks: Comparable {
    case bronze
    case silver
    case gold
    case platinum
    case diamond
}

let minimumPlayerRankForMatch: PlayerRanks = .gold

func determineQualification(for rank: PlayerRanks) {
    if rank >= minimumPlayerRankForMatch {
        print("This player qualifies")
    } else {
        print("Get some practice first")
    }
}

determineQualification(for: .bronze)
