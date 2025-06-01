//
//  ContentView.swift
//  SmartInspector
//
//  Created by Ricardo Gallegos on 5/27/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            HStack (alignment: .top, spacing: 0){
                VStack{
                    Text("Main Canvas")
                        .font(.largeTitle)
                    Spacer()
                }
                .frame(minWidth: 500)
                
                InspectorSidebarView()
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .toolbar{
                ToolbarItem(placement: .primaryAction){
                    Button(action: {}) {
                        Label("View", systemImage:"square.dashed")
                    }
                }
                ToolbarItemGroup{
                    Button(action: {}){
                        Label("View", systemImage: "rectangle.grid.1x2")
                    }
                    Button(action: {}){
                        Label("Zoom", systemImage: "magnifyingglass")
                    }
                    Button(action: {}){
                        Label("Add Category", systemImage: "plus.circle")
                    }
                    Button(action: {}){
                        Label("Pivot Table", systemImage: "square.grid.3x3")
                    }
                    Button(action: {}){
                        Label("Insert", systemImage: "plus.square.on.square")
                    }
                    Button(action: {}){
                        Label("Table", systemImage: "tablecells")
                    }
                    Button(action: {}){
                        Label("Chart", systemImage: "chart.bar")
                    }
                    Button(action: {}){
                        Label("Text", systemImage: "textformat")
                    }
                    Button(action: {}){
                        Label("Shape", systemImage: "square")
                    }
                    Button(action: {}){
                        Label("Media", systemImage: "photo")
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
