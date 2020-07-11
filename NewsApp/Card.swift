//
//  Card.swift
//  NewsApp
//
//  Created by Abdul chaudhary on 12/07/20.
//  Copyright © 2020 Abdul chaudhary. All rights reserved.
//

public struct Card: Hashable {
    public func hash(into hasher: inout Hasher) {
        hasher.combine(identifier)
    }
    
    public static func ==(lhs: Card, rhs: Card) -> Bool{
        return lhs.identifier == rhs.identifier
    }
    
    public var isFaceUp = false
    public var isMatched = false
    public var identifier: Int
    private static var factoryIdentifier = 0
    private static func getUniqueIdentifier() -> Int{
        factoryIdentifier += 1
        return factoryIdentifier
    }
    
    public init() {
        self.identifier = Card.getUniqueIdentifier()
    }
}

