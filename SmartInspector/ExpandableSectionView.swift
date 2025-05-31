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
                .padding(.top, 4)
        } label: {
            Text(title)
                .font(.headline)
                .padding(.vertical, 4)
        }
        .padding()
        .background(Color(NSColor.controlBackgroundColor))
        .cornerRadius(8)
        .overlay(
            RoundedRectangle(cornerRadius: 8)
                .stroke(Color.gray.opacity(0.2), lineWidth: 1)
        )
        .padding(.horizontal)
    }
}

#Preview {
    ExpandableSectionView(title: "Sample Section"){
        VStack(alignment: .leading) {
            Text("Example Line 1")
            Text("Example Line 2")
        }
    }
}
