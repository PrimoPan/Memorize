//
//  ContentView.swift
//  Memorize
//
//  Created by Primo Jay Pan on 2023/3/4.
//



import SwiftUI


struct ContentView: View {
    var vm: ViewModel
    var body: some View {
        VStack{
            ScrollView{
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 100))])
                {
                    ForEach(vm.cards)
                    {card in  CardView(card:card).aspectRatio(2/3,contentMode: .fit)}
                        .foregroundColor(.red)
                    }
                }
           /* Spacer()
            HStack()
            {
                REMOVE
                Spacer()
                ADD
            }
            .font(.largeTitle)
            .padding(.vertical, 2.0)*/

        }
        .padding(.horizontal)
        }
        /*
        
        var REMOVE : some View
        {
            Button(action:{count=count-1;}
                   ,label:{Image(systemName: "minus.circle")})
        }
        var ADD : some View {
            Button (action :{
                count=count+1;
                },
                    label:{Image(systemName: "plus.circle")}
                )
            }
         */
}


struct CardView:    View{
   
    let card : MemoryGame<String>.Card
    var body:some View{
      
       let shape    =  RoundedRectangle(cornerRadius: 20)
       ZStack
                {
                    if (card.isFaceUP){
                        shape.fill().foregroundColor(.white)
                        shape.strokeBorder(lineWidth: 3)
                        Text(card.Content)
                            .font(.largeTitle)
                    }
                    else{
                        shape.fill();
                    }
                }
            
    }
}















struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        let game = ViewModel()
        ContentView(vm: game)
            //.padding(.horizontal, 3.0)
            
    }
}
