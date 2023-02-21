//
//  ContentView.swift
//  Moonshot
//
//  Created by Fernando Gomez on 2/14/23.
//

import SwiftUI


struct ContentView: View {
    
    let astronauts: [String: Astronaut] = Bundle.main.decode("astronauts.json")
    let missions: [Mission] = Bundle.main.decode("missions.json")
    var body: some View {
        Text("\(astronauts.count)")
  
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
