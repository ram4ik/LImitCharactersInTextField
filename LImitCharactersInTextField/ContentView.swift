//
//  ContentView.swift
//  LImitCharactersInTextField
//
//  Created by ramil on 19.05.2020.
//  Copyright © 2020 com.ri. All rights reserved.
//

import SwiftUI

struct ContentView: View {

    @ObservedObject var textFieldManager = TextFieldManager()
    
    var body: some View {
        TextField("Enter something...", text: $textFieldManager.userInput)
            .padding()
            .background(Color(red: 239/255, green: 243/255, blue: 244/255))
            .cornerRadius(10)
            .padding()
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
