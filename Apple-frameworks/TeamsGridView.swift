//
//  ContentView.swift
//  Apple-frameworks
//
//  Created by Gustavo Braz on 09/09/24.
//

import SwiftUI

struct TeamsGridView: View {
    let columns: [GridItem] = [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())]
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color.black, Color.gray]), startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/)
            NavigationView {
                ScrollView {
                    LazyVGrid(columns: columns) {
                        ForEach(mockedData.soccerTeams, id: \.self) {
                            soccerTeam in TeamView(team: soccerTeam)
                        }
            
                    }
                    
                }
                .navigationTitle("⚽︎ Soccer Teams")
            }
        }
    }
}

#Preview {
    TeamsGridView()
}

struct TeamView: View {
    let team: SoccerTeam
    
    var body: some View {
        VStack {
            Image(team.imageName)
                .resizable()
                .frame(width: 80, height: 80)
                .aspectRatio(contentMode: .fit)
            Text(team.name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.6)
        }
        .padding()
    }
}
