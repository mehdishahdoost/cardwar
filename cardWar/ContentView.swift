//
//  ContentView.swift
//  cardWar
//
//  Created by mehdi shahdoost on 10/23/22.
//

import SwiftUI

struct ContentView: View {
   
    @State private var playerCard = "card3"
    @State private var cpuCard = "card4"
    @State private var playerScore = 0
    @State private var cpuScore = 0
    
    
    
    var body: some View {
        
        ZStack {
            
            Image("background")
                .ignoresSafeArea()
            
            VStack {
                Spacer()
                Image("logo")
                Spacer()
                HStack(spacing: 50.0) {
                    Image(playerCard)
                    Image(cpuCard)
                }
                Spacer()
                
                Button(action: {
                    
                    let playerRand = Int.random(in: 2...14)
                    let cpuRand = Int.random(in: 2...14)
                
                    playerCard = "card" + String(playerRand)
                    cpuCard = "card" + String(cpuRand)
                    
                    if(playerRand > cpuRand) {
                        playerScore += 1
                    }else{
                        cpuScore += 1
                    }
                    
                }, label: {
                    Image("dealbutton")
                })

                Spacer()
                
                HStack{
                    Spacer()
                    VStack {
                        Text("Player").font(.subheadline).foregroundColor(Color.white).bold().padding(.bottom)
                        Text(String(playerScore)).font(.subheadline).foregroundColor(Color.white).bold()
                    }
                    Spacer()
                    
                    VStack {
                        
                        Text("CPU").font(.subheadline).foregroundColor(Color.white).bold().padding(.bottom)
                        Text(String(cpuScore)).font(.subheadline).foregroundColor(Color.white).bold()
                    }
                    Spacer()
                }
                Spacer()
                
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
