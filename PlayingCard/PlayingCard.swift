//
//  PLayingCard.swift
//  PlayingCard
//
//  Created by Maria Yelfimova on 1/27/20.
//

import Foundation

struct PlayingCard: CustomStringConvertible
{
    var description: String {
        return "\(self.rank) of \(self.suit)"
    }
    
    var suit: Suit
    var rank: Rank
    
    
    // demo of raw value business
    enum Suit: String, CustomStringConvertible {
        var description: String {
            return self.rawValue
//            var desc = switch self {
//                case .spades: return
//                case .diamonds(let pips): return String(pips)
//                case .face(let kind): return kind
//                }
//            return description
        }
        
        case spades = "♠️"
        case diamonds = "♦️"
        case clubs = "♣️"
        case hearts = "♥️"

        static var all = [Suit.spades, Suit.diamonds, Suit.clubs, Suit.hearts]
    }
    
    enum Rank: CustomStringConvertible {
        var description: String {
            switch self {
                case .ace: return "Ace"
                case .numeric(let pips): return String(pips)
                case .face(let kind): return kind
                }
        }
    
        case ace
        case face(String)
        case numeric(Int)
        
        var order: Int {
            switch self{
            case .ace: return 1
            case .numeric(let pips): return pips
            case .face(let kind) where kind == "Jack": return 11
            case .face(let kind) where kind == "Queen": return 11
            case .face(let kind) where kind == "King": return 11
            default: return 0
            }
        }
        
        static var all: [Rank] {
            var allRanks = [Rank.ace]
            
            for pips in 2...10 {
                allRanks.append(Rank.numeric(pips))
            }
            allRanks += [Rank.face("J"), Rank.face("K"), Rank.face("Q")]
            
            return allRanks
        }
        
    }
}
