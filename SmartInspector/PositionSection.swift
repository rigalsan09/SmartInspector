//
//  PositionSection.swift
//  SmartInspector
//
//  Created by Ricardo Gallegos on 5/30/25.
//

import SwiftUI

struct PositionSection: View {
    
    @State private var unit = "pt"
    @State private var textInput: Int = 0
    @State private var objectName: String = ""
    @State private var tooltip: String = ""
    
    var body: some View {
       
        
       //Main
        VStack(spacing: 12) {
            
            //Object Name
            VStack(spacing: 4){
                Text("Name")
                    .font(.caption)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    
                TextField("Object name", text: $objectName)
                    .font(.caption)
                
            }
        
                
            //Tooltip
            VStack(spacing: 4){
                Text("Tooltip")
                    .font(.caption)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    
                TextField("Tooltip", text: $tooltip)
                    .font(.caption)
                    
            }
            
            Divider()
            
            //---Position
            VStack(spacing: 4.0){
                
                Text("Position")
                    .font(.caption)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                //---CONATAINER (LEFT & RIGHT)
                HStack{
                    
                    PositionInputRow(label: "Left", value: $textInput, unit: $unit)
                    
                    PositionInputRow(label: "Top", value: $textInput, unit: $unit)

                }
                
                //---CONATAINER (TOP & BOTTOM)
                HStack{
                    
                    PositionInputRow(label: "Right", value: $textInput, unit: $unit)
                    
                    PositionInputRow(label: "Bottom", value: $textInput, unit: $unit)
                    
                }
                
            }
            
           Divider()
            //---Size
            VStack (spacing: 4.0){
                
                Text("Size")
                    .font(.caption)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                HStack{
                    PositionInputRow(label: "Width", value: $textInput, unit: $unit)
                    
                    PositionInputRow(label: "Height", value: $textInput, unit: $unit)
                    
                }
            }

            
        }
        .frame(maxWidth: .infinity, alignment: .top)
        .padding([.top, .leading, .bottom],12)
        .padding(.trailing, 20)
    }
}


//Reusable Position section

private struct PositionInputRow: View {
    
    let label: String
    @Binding var value: Int
    @Binding var unit: String
    
    var body: some View {
        
        HStack(alignment: .top, spacing: 4) {
            
            VStack (spacing: 4.0) {
                
                TextField("0", value: $value, formatter: NumberFormatter())
                    .frame(minWidth:40)
                    .multilineTextAlignment(.trailing)
                
                //Label
                Text(label)
                    .font(.caption)
                    .fontWeight(.regular)
                    .foregroundColor(.secondary)
                    .fixedSize()
                    .frame(maxWidth: .infinity)
            }
            .frame(maxWidth: .infinity)
            
            Stepper("", value: $value)
                .labelsHidden()
            
            Button(action: {
                switch unit {
                case "pt": unit = "cm"
                case "cm": unit = "in"
                default: unit = "pt"
                }
            }) {
                Text(unit)
                    .frame(maxHeight: .infinity)
            }
            .buttonStyle(.plain)
            .frame(width: 20, height: 22)
        }
        .frame(maxWidth: .infinity)
        
    }
}
                
#Preview {
    PositionSection()
}
