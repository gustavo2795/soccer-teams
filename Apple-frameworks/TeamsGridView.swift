//
//  ContentView.swift
//  Apple-frameworks
//
//  Created by Gustavo Braz on 09/09/24.
//

import SwiftUI

struct TeamsGridView: View {
    var body: some View {
        ScrollView {
            Text("⚽︎ Teams")
                .font(.system(size: 32, weight: .bold))
                .frame(width: 350, alignment: .leading)
        }
        .padding()
    }
}

#Preview {
    TeamsGridView()
}
