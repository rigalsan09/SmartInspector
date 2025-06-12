//
//  ArrangeAlignSection.swift
//  SmartInspector
//
//  Created by Ricardo Gallegos on 6/9/25.
//

import SwiftUI

struct ArrangeAlignSection: View {
    
    @State private var showDistributeOptions = false
    
    var body: some View {
        
        //Main
        VStack(alignment: .leading, spacing:16){
    
            //----Align Section----
                VStack {
                    
                    //Title
                    Text("Align")
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                    //Button Container
                    HStack (spacing: 16){
                        
                        //Align vertical button
                        HStack(spacing: 4){
                            
                            //Align left
                            iconButton()
                            
                            //Align center
                            iconButton()

                            
                            //Align right
                            iconButton()
                            
                        }
                        
                        //Align horizontal button
                        HStack(spacing: 4){
                            
                            //Align top
                            iconButton()

                            
                            //Align center
                            iconButton()

                            
                            //Align bottom
                            iconButton()
                            
                        }
                        

                        //More options
                        Button(action: {
                            showDistributeOptions.toggle()
                        }) {
                            Image(systemName: "ellipsis")
                        }
                        .popover(isPresented: $showDistributeOptions) {
                            
                            VStack(alignment: .leading, spacing: 8) {
                                
                                Button(action: {}) {
                                    Label("Distribute Horizontally", systemImage: "square.dashed")
                                }
                                .buttonStyle(.plain)
                                
                                Button(action: {}) {
                                    Label("Distribute Vertically", systemImage: "square.dashed")
                                }
                                .buttonStyle(.plain)
                                
                            }
                            .padding(8)
                            .frame(width: 200)
                        }
                    }
                }
            
            //----Arrange Section----
            VStack{
                
                //Title
                Text("Arrange")
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                //Button Container
                HStack (spacing: 16){
                    
                    //Align vertical button
                    HStack(spacing: 4){
                        
                        //Back
                        iconButtonWithLabel(label: "Back")
                        

                        
                        //Front
                        iconButtonWithLabel(label: "Front")

                        
                    }
                    
                    //Align horizontal button
                    HStack(spacing: 4){
                        
                        //Backward
                        iconButtonWithLabel(label: "Backward")

                        
                        //Forward
                        iconButtonWithLabel(label:"Forward")
                        
                    }
                    
                }
            }
            
            //----Resize Section----
            VStack{
                
                //Title
                Text("Resize")
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                //Button Container
                HStack (spacing: 16){
                    
                    //Container 1
                    HStack(spacing: 4){
                        
                        //Align bottom
                        iconButton()
                        

                        //Align bottom
                        iconButton()

                    }
                    
                    //Container 2
                    HStack(spacing: 4){
                        
                        //Align bottom
                        iconButton()
                        

                        //Align bottom
                        iconButton()

                    }
                    
                    //Container 3
                    HStack(spacing: 4){
                        
                        //Align bottom
                        iconButton()
                        

                        //Align bottom
                        iconButton()

                    }
                }
            }
            
            //----Group Section----
            VStack{
                
                //Title
                Text("Group")
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                //Container
                HStack {
                    
                    //Group
                    iconButton()
                        
                    //Ungroup
                    iconButton()

                    //Add to group
                    iconButton()
                        
                    //Remove from group
                    iconButton()
                }
            }
            
            //----Lock Section----
            VStack{
                
                //Title
                Text("Lock")
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                //Container
                HStack {
                    
                    //Group
                    iconButton()
                        
                    //Ungroup
                    iconButton()
                    
                }
            }

        }
        .frame(maxWidth: .infinity, alignment: .top)
        .padding([.top, .leading, .bottom],12)
        .padding(.trailing, 20)
        
    }
    
    private func iconButton() -> some View {
        
        //Button
        Button(action: {}){
            Image(systemName: "square.dashed")
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
        }
    }
    
    private func iconButtonWithLabel(label: String) -> some View {
        VStack{
            //Button
            Button(action: {}){
                Image(systemName: "square.dashed")
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
            }
            
            //Label
            Text(label)
                .font(.caption)
                .fontWeight(.regular)
                .foregroundColor(.secondary)
                .fixedSize()
                .frame(maxWidth: .infinity)
        }
    
    }
}

#Preview {
    ArrangeAlignSection()
    
}


