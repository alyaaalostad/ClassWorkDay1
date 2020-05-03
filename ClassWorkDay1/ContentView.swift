//
//  ContentView.swift
//  ClassWorkDay1
//
//  Created by Alyaa AlOstad on 5/3/20.
//  Copyright © 2020 Alyaa. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var thekr = "سبحان الله"
    var body: some View {
        ZStack{
            RamadanBG()
            Text(thekr)
                .font(.largeTitle)
                .foregroundColor(.white)
                .multilineTextAlignment(.center)
            .padding()
                .onTapGesture {
                    self.thekr = athkar.randomElement()!
            }
        }
            
            
        .edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct RamadanBG: View {
    var body: some View {
        ZStack{
            Image("BACKGROUND")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            
            VStack{
                Image("Header")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Spacer()
                Image("Mosque")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                
            }
            
        }.edgesIgnoringSafeArea(.all)
    }
}
