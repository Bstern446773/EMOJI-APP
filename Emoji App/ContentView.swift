//
//  ContentView.swift
//  Emoji App
//
//  Created by Bennett Stern on 12/14/23.
//

import SwiftUI

enum Emoji: String, CaseIterable {
    case 🌯, 🍫,🍩,🌭,🌮,🍔,🍟
}

struct ContentView: View {
    @State var selection: Emoji = .🌯
    
    var body: some View {
        VStack {
            Text("Emoji Junk Food!")
            Spacer()
            Text(selection.rawValue)
                .font(.system(size: 300))
            
            Picker("Select Emoji", selection: $selection) {
                ForEach(Emoji.allCases, id: \.self){emoji in
                    Text(emoji.rawValue)
                }
            }
            .pickerStyle(.segmented)
        }
        
        .navigationTitle("Emoji Junk Food!")
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

