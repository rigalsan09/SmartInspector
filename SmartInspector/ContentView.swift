//
//  ContentView.swift
//  SmartInspector
//
//  Created by Ricardo Gallegos on 5/27/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            
            
            Text("Toolbar")
            Text("Toolbar")
            Text("Toolbar")
        }
        ZStack {
            Text("Navigation")
        }
        HStack (alignment: .top, spacing: 0){
            VStack{
                Text("Main Canvas")
                    .font(.largeTitle)
                Spacer()
            }
            .frame(minWidth: 500)
            
            InspectorSidebarView()
        }
    }
}

#Preview {
    ContentView()
}
