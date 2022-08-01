//
//  SplashScreenView.swift
//  Little black dice
//
//  Created by Голота Евгений on 24.07.2022.
//

import SwiftUI

struct SplashScreenView: View {
    
    @State private var isActive = false
    @State private var opacity = 0.5
    
    var body: some View {
        
        if isActive {
            ContentView()
        } else {
            ZStack {
                Color.black
                    .ignoresSafeArea()
                
                VStack(alignment: .leading) {
                    Spacer()
                    Text("Little Black Dice")
                        .font(.largeTitle)
                    Spacer()
                    Text("Couldn't be easier.")
                        .opacity(0.3)
                    Spacer()
                        .frame(height: 25)
                    
                }
                .foregroundColor(.white)
                .frame(width: 360, alignment: .leading)
                .opacity(opacity)
                .onAppear {
                    withAnimation(.easeInOut(duration: 0.6)) {
                        self.opacity = 1
                    }
                }
                
            }
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                    withAnimation {
                        self.isActive = true
                    }
                }
            }
        }
    }
    
    
    
    
    
    
    struct SplashScreenView_Previews: PreviewProvider {
        static var previews: some View {
            SplashScreenView()
        }
    }
}
