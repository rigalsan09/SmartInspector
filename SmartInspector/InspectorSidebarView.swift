//
//  InspectorSidebarView.swift
//  SmartInspector
//
//  Created by Ricardo Gallegos on 5/27/25.
//

//Reusable sidebar view

import SwiftUI

struct InspectorSidebarView: View {
    
    @State private var selectedTab = 0
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 0) {
            Picker("", selection: $selectedTab){
                Text("Properties").tag(0)
                Text("Data").tag(1)
            }
            .pickerStyle(SegmentedPickerStyle())
            .padding(.horizontal, 12)
            .padding(.vertical, 12)
            
            //Switches what appears depending on the selected tab
            
            Group{
                 if selectedTab == 0 {
                     
                     VStack(alignment: .leading, spacing: 12) {
                         CustomDisclosureView(title: "Position"){
                             PositionSection()
                         }
//                         Spacer()
                     }
                     
                 } else {
                     VStack(alignment: .leading, spacing: 12) {
                         CustomDisclosureView(title: "Field"){
                             Text("City")
                         }
//                         Spacer()
                     }
                 }
             }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
        .background(Color(NSColor.controlBackgroundColor))
//        .border(Color(NSColor.separatorColor), width: 1)
        .overlay(
            Rectangle()
                .frame(width: 1)
                .foregroundColor(Color(NSColor.separatorColor)), alignment: .leading
        )
        
    }
}

#Preview {
    InspectorSidebarView()
}
