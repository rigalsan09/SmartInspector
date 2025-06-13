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
        VStack(spacing: 12){
            
            //----Align Section----
            VStack(spacing: 4) {
                    
                    //Title: Align
                    Text("Align")
                    .font(.caption)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    
                    //Button Container
                HStack {
                    
                    //Align vertically
                    HStack (spacing: 2){
                        
                        //Align left
                        iconButtonNoRightRadius()
                        
                        
                        //Align center
                        iconButtonNoRadius()
                        
                        //Align right
                        iconButtonNoLeftRadius()
                    }
                    
                    //Align Horizontally
                    HStack {
                        //Align left
                        iconButtonNoRightRadius()
                        
                        
                        //Align center
                        iconButtonNoRadius()
                        
                        //Align right
                        iconButtonNoLeftRadius()
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
                    .font(.caption)
                    .frame(maxWidth: .infinity, alignment: .leading)

                //Button Container
                HStack (spacing: 4){

                    //Align vertical button
                    HStack(spacing: 4){

                        //Back
                        iconButtonWithLabel(label: "Back", systemName: "square.dashed")



                        //Front
                        iconButtonWithLabel(label: "Front", systemName: "square.dashed")


                    }

                    //Align horizontal button
                    HStack(spacing: 4){

                        //Backward
                        iconButtonWithLabel(label: "Backward", systemName: "square.dashed")


                        //Forward
                        iconButtonWithLabel(label:"Forward", systemName: "square.dashed")

                    }

                }
            }



            //----Resize Section----
            VStack{

                //Title
                Text("Resize")
                    .font(.caption)
                    .frame(maxWidth: .infinity, alignment: .leading)

                //Button Container
                HStack (spacing: 4){

                    //Container 1
                    HStack(spacing: 2){

                        //Align bottom
                        iconButton(systemName: "align.horizontal.left")


                        //Align bottom
                        iconButton(systemName: "square.dashed")

                    }


                    //Container 2
                    HStack(spacing: 2){

                        //Align bottom
                        iconButton(systemName: "square.dashed")


                        //Align bottom
                        iconButton(systemName: "square.dashed")

                    }
                    

                    //Container 3
                    HStack(spacing: 2){

                        //Align bottom
                        iconButton(systemName: "square.dashed")


                        //Align bottom
                        iconButton(systemName: "square.dashed")

                    }
                    
                }
                
            }



            //----Group Section----
            VStack{

                //Title
                Text("Group")
                    .font(.caption)
                    .frame(maxWidth: .infinity, alignment: .leading)

                //Container
                HStack {

                    //Group
                    iconButton(systemName: "square.dashed")

                    //Ungroup
                    iconButton(systemName: "square.dashed")

                    //Add to group
                    iconButton(systemName: "square.dashed")

                    //Remove from group
                    iconButton(systemName: "square.dashed")
                }
                
            }
            


            //----Lock Section----
            VStack{

                //Title
                Text("Lock")
                    .font(.caption)
                    .frame(maxWidth: .infinity, alignment: .leading)

                //Container
                HStack (spacing: 8){

                    //Group
                    iconButton(systemName: "square.dashed")

                    //Ungroup
                    iconButton(systemName: "square.dashed")

                }
                
            }
            
            

        }
        .frame(maxWidth: .infinity, alignment: .top)
        .padding([.top, .leading, .bottom],12)
        .padding(.trailing, 20)
        
    }
    
}

#Preview {
    ArrangeAlignSection()
    
}


//---Button no label
private func iconButton(systemName: String) -> some View {
    
    Button(action: {}){
        Image(systemName: systemName)
            .frame(maxWidth: .infinity)
    }
}


//Button no radius on the right side
private func iconButtonNoRightRadius() -> some View {
    
    Button(action: {}){
        Image(systemName: "square.dashed")
            .frame(maxWidth: .infinity)
    }
    .buttonStyle(CompactButtonStyle(topRight: 0, bottomRight: 0))
}

//Button no radius no radius
private func iconButtonNoRadius() -> some View {
    
    Button(action: {}){
        Image(systemName: "square.dashed")
            .frame(maxWidth: .infinity)
    }
    .buttonStyle(CompactButtonStyle(topLeft: 0, topRight: 0, bottomLeft: 0, bottomRight: 0))
}

//Button no radius on the left side
private func iconButtonNoLeftRadius() -> some View {
    
    Button(action: {}){
        Image(systemName: "square.dashed")
            .frame(maxWidth: .infinity)
    }
    .buttonStyle(CompactButtonStyle(topLeft: 0, bottomLeft: 0))
}


//Button with bottom label
private func iconButtonWithLabel(label: String, systemName: String) -> some View {
    VStack{
        
        Button(action: {}){
            Image(systemName: systemName)
                .frame(maxWidth: .infinity)
        }
        
        Text(label)
            .font(.caption)
            .fontWeight(.regular)
            .foregroundColor(.secondary)
            .fixedSize()
    }
}



//RoundedCorners
struct RoundedCorners: Shape {
    var topLeft: CGFloat = 0
    var topRight: CGFloat = 0
    var bottomLeft: CGFloat = 0
    var bottomRight: CGFloat = 0

    func path(in rect: CGRect) -> Path {
        var path = Path()

        let width = rect.size.width
        let height = rect.size.height

        let tr = min(min(topRight, height / 2), width / 2)
        let tl = min(min(topLeft, height / 2), width / 2)
        let bl = min(min(bottomLeft, height / 2), width / 2)
        let br = min(min(bottomRight, height / 2), width / 2)

        path.move(to: CGPoint(x: width / 2, y: 0))
        path.addLine(to: CGPoint(x: width - tr, y: 0))
        path.addArc(center: CGPoint(x: width - tr, y: tr), radius: tr, startAngle: .degrees(-90), endAngle: .degrees(0), clockwise: false)

        path.addLine(to: CGPoint(x: width, y: height - br))
        path.addArc(center: CGPoint(x: width - br, y: height - br), radius: br, startAngle: .degrees(0), endAngle: .degrees(90), clockwise: false)

        path.addLine(to: CGPoint(x: bl, y: height))
        path.addArc(center: CGPoint(x: bl, y: height - bl), radius: bl, startAngle: .degrees(90), endAngle: .degrees(180), clockwise: false)

        path.addLine(to: CGPoint(x: 0, y: tl))
        path.addArc(center: CGPoint(x: tl, y: tl), radius: tl, startAngle: .degrees(180), endAngle: .degrees(270), clockwise: false)

        path.closeSubpath()
        return path
    }
}

//Button Style
struct CompactButtonStyle: ButtonStyle {
    var topLeft: CGFloat = 6
    var topRight: CGFloat = 6
    var bottomLeft: CGFloat = 6
    var bottomRight: CGFloat = 6

    func makeBody(configuration: Configuration) -> some View {
        configuration.label
//            .frame(maxWidth: .infinity)
            .padding(3)
            .background(
                RoundedCorners(topLeft: topLeft, topRight: topRight, bottomLeft: bottomLeft, bottomRight: bottomRight)
                    .fill(Color(NSColor.controlBackgroundColor))
            )
            .overlay(
                RoundedCorners(topLeft: topLeft, topRight: topRight, bottomLeft: bottomLeft, bottomRight: bottomRight)
                    .stroke(Color(NSColor.separatorColor).opacity(configuration.isPressed ? 0.6 : 0.3))
            )
            .shadow(
                color: Color.black.opacity(0.1), radius: configuration.isPressed ? 0 : 1, x: 0, y: 1)
        
            .scaleEffect(configuration.isPressed ? 0.98 : 1.0)
    }
}
