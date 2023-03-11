//
//  GameModel.swift
//  Memorize
//
//  Created by Primo Jay Pan on 2023/3/7.
//

import Foundation


struct MemoryGame<CardContent>
{
    private(set) var cards:Array<Card>
    
    
    func choose ( _ card:Card)
    {
        
    }
    
    
    init (NumberofPairofCards : Int,MakeContent: (Int)->CardContent)
    {
            cards = Array<Card>()
            for i in 0..<NumberofPairofCards
            {
                let content = MakeContent(i)
                cards.append(Card(Content: content,id: i*2))
                cards.append(Card(Content: content,id: i*2+1))
            }
    }
    
    
    struct Card :Identifiable{
        var isFaceUP : Bool = true
        var isMatched : Bool = false
        var Content : CardContent
        var id : Int
    }

}

