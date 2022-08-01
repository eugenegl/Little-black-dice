//
//  ContentView.swift
//  Little black dice
//
//  Created by Голота Евгений on 24.07.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var random: String = ""
    
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            VStack {
                Spacer()
                
                Button(action: {
                    
                    self.random = chooseRandomImage()
                    
                }) {
                    
                    ZStack {
                        Color.white
                            .opacity(0.05)
                        
                        Image("borderBottom")
                            .frame(width: 120, height: 120, alignment: .bottomTrailing)
                        
                        Image("borderTop")
                            .frame(width: 120, height: 120, alignment: .topLeading)
                        
                        Image(random)
                            .renderingMode(.original)
                            .frame(alignment: .center)
                    }
                }
                .frame(width: 120, height: 120)
                
                Spacer()
                
                Text("Tap to roll the Dice")
                    .padding()
                    .foregroundColor(.white)
                    .opacity(0.3)
            }
            
        }
    }
}

var images = ["dotOne", "dotTwo", "dotThree", "dotFour", "dotFive", "dotSix"]

func chooseRandomImage() -> String {
    let array = images
    
    let result = array.randomElement()!
    
    return result
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
