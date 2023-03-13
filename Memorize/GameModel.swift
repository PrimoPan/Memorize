//
//  GameModel.swift
//  Memorize
//
//  Created by Primo Jay Pan on 2023/3/7.
//
/*
  Some Notes By Primo
    this part is the 'Model' in the MVVM framework
    <CardContent> is an unknown type which we can define its type when we instantiate it
    the parament MakeContent is a function which we will define in the ViewModel Part
 */
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
    
    /*
        We should make it Identifiable so that we can use 'for in' in the cards array
     */
    struct Card :Identifiable{
        var isFaceUP : Bool = true
        var isMatched : Bool = false
        var Content : CardContent
        var id : Int
    }

}

