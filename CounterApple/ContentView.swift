//
//  ContentView.swift
//  CounterApple
//
//  Created by Adonai Pinheiro on 22/03/25.
//

import SwiftUI

struct ContentView: View {
    let name: String
    @State private var contador: Int = 0

    var body: some View {
        VStack(spacing: 16) {
            Text("Olá, \(name)")
                .font(.title3)
            
            Text("Contador: \(contador)")
                .font(.title)
            
            HStack(spacing: 16) {
                Button(action: {
                    contador += 1
                }) {
                    Text("Incrementar")
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                }
                
                Button(action: {
                    contador = 0
                }) {
                    Text("Resetar")
                        .padding()
                        .foregroundColor(.blue)
                }
            }
        }
        .padding()
    }
}

#Preview {
    ContentView(name: "Adonai")
}
