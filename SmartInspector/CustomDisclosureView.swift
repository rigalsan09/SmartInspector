//
//  CustomDisclosureView.swift
//  SmartInspector
//
//  Created by Ricardo Gallegos on 6/4/25.
//

import SwiftUI

struct CustomDisclosureView<Content: View>: View {
    let title: String
    let initiallyExpanded: Bool
    let content: () -> Content
    
    @State private var isExpanded: Bool
    
    init(title: String, initiallyExpanded: Bool = true, @ViewBuilder content: @escaping () -> Content){
        self.title = title
        self.initiallyExpanded = initiallyExpanded
        self._isExpanded = State(initialValue: initiallyExpanded)
        self.content = content
    }
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 0.0){
            
            //Header
            Button(action: {
//                withAnimation {
                    isExpanded.toggle()
//                }
            }){
                //Header Button
                HStack{
                    Image(systemName: isExpanded ? "chevron.down" : "chevron.right")
                        .frame(width: 16, alignment: .leading)
                        .foregroundColor(.secondary)
                    
                    Text(title)
                        .font(.headline)
                        .fontWeight(.semibold)
                        .foregroundColor(Color(NSColor.labelColor))
                    
                    Spacer()
                }
                .padding(.horizontal, 12)
                .padding(.vertical, 8)
                .background(Color(NSColor.controlBackgroundColor))
            }
            .buttonStyle(PlainButtonStyle())
            
            //Expandable Content
            if isExpanded {
                
                VStack (alignment: .leading, spacing: 12){
                    content()
                }
                .padding(.horizontal, 12)
                .padding(.bottom, 12)
            }
        }
        .frame(maxWidth: .infinity, alignment: .top)
        
    }
}

#Preview {
    CustomDisclosureView(title: "Position"){
        PositionSection()
    }
}
