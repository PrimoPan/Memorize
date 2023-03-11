//
//  ViewModel.swift
//  Memorize
//
//  Created by Primo Jay Pan on 2023/3/7.
//

import SwiftUI

func MakeCardContent(n : Int) -> String
{
    return "👴🏾"
}

class ViewModel{
    static let emojis=["🐶","🐱","🐭","🐹","🐰","🦊","🐻","🐼","🐻‍❄️","🐨","🐯","🦁","🐮","🐷"]
    static func CreateMemoryGame ()-> MemoryGame<String> {
        MemoryGame<String> (NumberofPairofCards: 4,
                            MakeContent:
                                {
                                    pairIndex in emojis[pairIndex]}
                                )
    }
    private var model=CreateMemoryGame();
    
    var cards : Array<MemoryGame<String>.Card>
    {
        return model.cards;
    }
}
