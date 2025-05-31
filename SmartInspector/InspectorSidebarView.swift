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
        VStack(alignment: .leading, spacing: 0){
            Text("Properties")
                .font(.title2)
                .padding()
            
            Divider()
            
            //Segmented control
            
            Picker("", selection: $selectedTab){
                Text("Properties").tag(0)
                Text("Data").tag(1)
            }
            .pickerStyle(SegmentedPickerStyle())
            .padding([.horizontal, .bottom])
            
            
            //Switches what appears depending on the selected tab
            
            Group{
                if selectedTab == 0 {
                    VStack(alignment: .leading, spacing: 12){
                        ExpandableSectionView(title: "Position"){
                            VStack(alignment: .leading){
                                Text("X: 1440 pt")
                                Text("Y: 1024 pt")
                            }
                        }
                        ExpandableSectionView(title: "Style"){
                            VStack(alignment: .leading){
                                Text("Fill White")
                                Text("Border None")
                            }
                        }
                    }
                } else {
                    VStack(alignment: .leading, spacing: 12){
                        ExpandableSectionView(title: "Field"){
                            Text("City")
                        }
                        ExpandableSectionView(title: "Behavior"){
                            Text("Hide Object when: False")
                        }
                    }
                }
            }
            .padding(.bottom)
        }
        .frame(minWidth: 300)
        .background(Color(NSColor.windowBackgroundColor))
        .border(Color.gray.opacity(0.2), width: 1)
    }
}

#Preview {
    InspectorSidebarView()
}
