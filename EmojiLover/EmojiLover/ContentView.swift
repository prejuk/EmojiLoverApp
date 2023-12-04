//
//  ContentView.swift
//  EmojiLover
//
//  Created by Preju Kanuparthy on 12/3/23.
//

import SwiftUI

enum Emoji: String, CaseIterable{
    case 💵, 🤝🏾, 🦏, 🥜, 😈
    
}


struct ContentView: View {
    
    @State var selection: Emoji = .💵
    @State var vikPic = Image("Vik")
    
    var body: some View {
        NavigationView {
            
            ZStack{
                LinearGradient(colors: [Color(UIColor.systemBlue).opacity(0.3), Color(UIColor.systemPurple).opacity(0.3)], startPoint: .topLeading, endPoint: .bottomTrailing)
                    .ignoresSafeArea()
                    
                
                VStack{
                    
                    HStack {
                        Image(systemName: "person.circle")
                            .padding()
                        
                        Spacer()
                        
                        Text ("Welcome")
                            .font(.headline)
                            .padding()
                        
                        Spacer()
                        
                        Image(systemName: "calendar")
                        Image(systemName: "gear")
                            .padding()
                        
                    }
                    
                    
                    Spacer()
                    
                    if selection == .😈 {
                        vikPic
                            .resizable()
                            .scaledToFit()
                            .frame(width: 200, height: 200)
                            .padding()
                    } else {
                        Text(selection.rawValue)
                            .font(.system(size: 150))
                    }
                    
                    Picker("Select Emoji", selection: $selection){
                        ForEach(Emoji.allCases, id: \.self){ emoji in
                            
                            
                            Text(emoji.rawValue)}
                        
                        
                    }
                    Spacer()
                }
                .pickerStyle(.segmented)
                .padding()
                
            }
        }
    }
}
#Preview {
    ContentView()
}
