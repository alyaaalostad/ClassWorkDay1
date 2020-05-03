//
//  Classwork2.swift
//  ClassWorkDay1
//
//  Created by Alyaa AlOstad on 5/3/20.
//  Copyright © 2020 Alyaa. All rights reserved.
//

import SwiftUI

struct Classwork2: View {
    @State var pageNumber = "4"
    var body: some View {
        ZStack{
            RamadanBG()
            VStack{
        Text("Page \(pageNumber)")
            .font(.largeTitle)
            .foregroundColor(.white)
            .fontWeight(.bold)
       TextField("رقم الصفحة", text: $pageNumber)
            .keyboardType(.numberPad)
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .padding()
            .multilineTextAlignment(.trailing)
            .frame(height: 90)
    }
        }
    }
}

struct Classwork2_Previews: PreviewProvider {
    static var previews: some View {
        Classwork2()
    }
}
