//
//  ContentView.swift
//  VisionDice
//
//  Created by Felipe Moraes Rocha on 04/02/24.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct ContentView: View {

    @Environment(\.openImmersiveSpace) var openImmersiveSpace
    
    var diceData: DiceData

    var body: some View {
        VStack {
            Text(diceData.rolledNumber ==  0 ? "🎲" : "\(diceData.rolledNumber)")
                .foregroundStyle(.black)
                .font(.custom("Menlo", size: 100))

        }
        .task {
            await openImmersiveSpace(id: "ImmersiveSpace")
        }
    }
}

#Preview(windowStyle: .automatic) {
    ContentView(diceData: DiceData())
}
