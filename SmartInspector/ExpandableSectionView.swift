//
//  ExpandableSectionView.swift
//  SmartInspector
//
//  Created by Ricardo Gallegos on 5/27/25.
//

import SwiftUI

struct ExpandableSectionView<Content: View>: View {
    let title: String
    @State private var isExpanded: Bool
    let content: Content
    
    init(title: String, initiallyExpanded: Bool = true, @ViewBuilder content: () -> Content) {
        self.title = title
        self._isExpanded = State(initialValue: initiallyExpanded)
        self.content = content()
    }
    
    var body: some View {
        
        DisclosureGroup(isExpanded: $isExpanded) {
            content
                .frame(maxWidth: .infinity, alignment: .leading)
                .border(Color.orange, width: 4)
        }
        label: {
            Text(title)
                
                .font(.headline)
                .fontWeight(.semibold)
                .frame(maxWidth: .infinity, alignment: .leading)
        }
        .border(Color.blue, width:4)

        .padding()
//        .background(Color(NSColor.controlBackgroundColor))
    }
}

#Preview {
    ExpandableSectionView(title: "Sample Section"){
        VStack(alignment: .leading) {
            Text("Example Line 1")
            
        }
    }
}
