//
//  Classwork3.swift
//  ClassWorkDay1
//
//  Created by Alyaa AlOstad on 5/3/20.
//  Copyright © 2020 Alyaa. All rights reserved.
//

import SwiftUI

struct Classwork3: View {
    @State var thekr = athkar.randomElement()!
    @State var counter = 0
    var body: some View {
        ZStack{
            RamadanBG()
            
            VStack{
                    Text(thekr).modifier(ThekrModifier())
                    Text("\(counter)").modifier(CounterModifer())
            }
            }.onTapGesture{
            self.counter += 1
            }.onLongPressGesture {
            self.thekr = athkar.randomElement()!
            self.counter = 0
              }
    }
}

struct ThekrModifier : ViewModifier {
    func body(content: Content) -> some View {
        content
        .foregroundColor(.white)
        .multilineTextAlignment(.center)
        .padding()
    }
}


struct CounterModifer: ViewModifier {
    func body(content: Content) -> some View{
         content
            .foregroundColor(.white)
            .font(.custom("Al Tarikh", size: 30))
            .padding(.horizontal, 50)
            .padding(.vertical, 4)
            .background(Color.init( #colorLiteral(red: 0.5489003658, green: 0.8530963063, blue: 0.7255270481, alpha: 0.25)))
            .clipShape(Capsule())
 
   }
}


struct Classwork3_Previews: PreviewProvider {
    static var previews: some View {
        Classwork3()
    }
}
