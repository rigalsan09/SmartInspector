//
//  ContentView.swift
//  SmartInspector
//
//  Created by Ricardo Gallegos on 5/27/25.
//

import SwiftUI

struct ContentView: View {
    
    @State var canvasHeight: CGFloat = 0
    
    var body: some View {
        
        
        HStack(spacing: 0){
            
            //Navigator
            HStack{
                Text("Navigator")
            }
            .frame(width: 256, height: canvasHeight)
            .background(Color(NSColor.windowBackgroundColor))
            
            GeometryReader{geometry in
                
                //Canvas
                HStack {
                    Text("Main Canvas")
                        .font(.largeTitle)
                    }
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
                    .background(Color(NSColor.windowBackgroundColor))
                    .onAppear{
                        canvasHeight = geometry.size.height
                    }
            }
            
            //Inspector
            InspectorSidebarView()
                .frame(width: 256, height: canvasHeight)
                
        }
        .frame(width:1440, height: 1024)
    }
}

#Preview {
    ContentView()
}
