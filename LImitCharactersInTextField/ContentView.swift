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
    
    @State private var selection = 0
    
    var body: some View {
        TabView(selection: $selection) {
            TextField("Enter something...", text: $textFieldManager.userInput)
                .padding()
                .background(Color(red: 239/255, green: 243/255, blue: 244/255))
                .cornerRadius(10)
                .padding()
            .tabItem {
                Image(systemName: "1.square")
                Text("First View")
            }.tag(0)
            
            Text("Second View")
                .tabItem {
                    Image(systemName: "2.square")
                    Text("Second View")
                }.tag(1)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
