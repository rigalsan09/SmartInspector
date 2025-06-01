//
//  PositionSection.swift
//  SmartInspector
//
//  Created by Ricardo Gallegos on 5/30/25.
//

import SwiftUI

struct PositionSection: View {
    var body: some View {
        VStack{
            HStack{
                VStack{
                    Button(action:{}){
                        Image(systemName: "square.dashed")
                    }
                    Text("Back")
                        .font(.caption)
                }
                
                VStack{
                    Button(action:{}){
                        Image(systemName: "square.dashed")
                    }
                    Text("Front")
                        .font(.caption)
                }
                
                VStack{
                    Button(action:{}){
                        Image(systemName: "square.dashed")
                    }
                    Text("Backward")
                        .font(.caption)
                }
                
                VStack{
                    Button(action:{}){
                        Image(systemName: "square.dashed")
                    }
                    Text("Forward")
                        .font(.caption)
                }
                
            }
            
            Divider()
            
            HStack{
                VStack{
                    Button(action:{}){
                        Image(systemName: "square.dashed")
                    }
                    Text("Forward")
                        .font(.caption)
                }
                
                VStack{
                    Button(action:{}){
                        Image(systemName: "square.dashed")
                    }
                    Text("Forward")
                        .font(.caption)
                }
                VStack{
                    Button(action:{}){
                        Image(systemName: "square.dashed")
                    }
                    Text("Forward")
                        .font(.caption)
                }
                VStack{
                    Button(action:{}){
                        Image(systemName: "square.dashed")
                    }
                    Text("Forward")
                        .font(.caption)
                }
                
            }
            HStack{
                VStack{
                    Button(action:{}){
                        Image(systemName: "square.dashed")
                    }
                    Text("Forward")
                        .font(.caption)
                }
                
                VStack{
                    Button(action:{}){
                        Image(systemName: "square.dashed")
                    }
                    Text("Forward")
                        .font(.caption)
                }
                VStack{
                    Button(action:{}){
                        Image(systemName: "square.dashed")
                    }
                    Text("Forward")
                        .font(.caption)
                }
                VStack{
                    Button(action:{}){
                        Image(systemName: "square.dashed")
                    }
                    Text("Forward")
                        .font(.caption)
                }
                
            }
            
            
//            HStack{
//                Text("X:")
//                    .frame(width: 20, alignment: .leading)
//                TextField("", text: .constant("1440"))
//                    .frame(width: 60)
//            }
//            HStack{
//                Text("Y:")
//                    .frame(width: 20, alignment: .leading)
//                TextField("", text: .constant("300"))
//                    .frame(width: 60)
//            }
//            HStack{
//                Text("W:")
//                    .frame(width: 20, alignment: .leading)
//                TextField("", text: .constant("300"))
//                    .frame(width: 60)
//            }
//            HStack{
//                Text("H:")
//                    .frame(width: 20, alignment: .leading)
//                TextField("", text: .constant("200"))
//                    .frame(width: 60)
//            }
        }
    }
}

#Preview {
    PositionSection()
}
