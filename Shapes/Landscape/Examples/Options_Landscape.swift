//
//  Options_Landscape.swift
//  NativeShapes
//
//  Created by Erik Kuipers on 30.09.20.
//  Copyright © 2020 Erik Kuipers. All rights reserved.
//

import SwiftUI


struct Options_Landscape: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        
        ZStack {
            Color.colorBackground
                .edgesIgnoringSafeArea(.all)
            VStack(spacing: 10.0) {
                TopViewLandscape()
                ScrollView(.vertical, showsIndicators: false) {
                    VStack(spacing: 40.0) {
                        Text("Customization Options")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(Color.colorMainText)
                        Text("Apply different colors and curve amounts (yOffset), or flip them upside down (X and Y negative).")
                            .multilineTextAlignment(.leading)
                            .frame(minWidth: 0, maxWidth: 340, minHeight: 120, maxHeight: 120)
                            .foregroundColor(Color.colorMainText)
                        
                        Base_Landscape(yOffset: 0.5)
                            .fill(Color.colorAccent)
                            .frame(width: 250, height: 90.0)
                            .shadow(radius: 5, y: 5)
                            .overlay(
                                Text("yOffset: 0.5"))
                            .foregroundColor(Color.colorMainText)
                        
                        Base_Landscape(yOffset: 1.5)
                            .fill(Color.colorThird)
                            .frame(width: 200, height: 80.0)
                            .scaleEffect(x: -1, y: -1)
                            .shadow(radius: -2, y: 5)
                            .overlay(
                                Text("yOffset: 1.5")
                                    .padding(.top))
//                                    .padding([.trailing], 20.0))
                            .foregroundColor(Color.colorMainText)
                        
                        Base_Landscape(yOffset: -0.75)
                            .fill(Color.colorSecond)
                            .frame(width: 200, height: 80.0)
                            .shadow(radius: 4, x: 8, y: -1)
                            .overlay(
                                Text("yOffset: -0.75"))
                            .foregroundColor(Color.colorMainText)
                        Text("Shapes can have strokes applied to them:")
                            .foregroundColor(Color.colorMainText)
                    }
                    
                    ZStack {
                        Base_Landscape()
                            .stroke(Color.colorAccent, lineWidth: 10)
                            .frame(width: 300, height: 160.0)
                            .padding()
                        Base_Landscape(yOffset: 1)
                            .stroke(Color.colorThird, style: StrokeStyle(lineWidth: 6, lineCap: .round, dash: [10, 15]))
                            .frame(width: 300, height: 120.0)
                            .padding([.top, .leading], 20)
                        Spacer()
                    }
                    
                    .padding(.bottom, 60.0)
                    BottomViewLandscape()
                }
            }
                
            .navigationBarBackButtonHidden(true)
                // Add your custom back button here
                .navigationBarItems(leading:
                    Button(action: {
                        self.presentationMode.wrappedValue.dismiss()
                    }) {
                        ZStack {
                            Base_Mountain(xOffset: 0.5)
                                .fill(Color.colorThird)
                                .previewLayout(.sizeThatFits)
                                .frame(width: 24.0, height: 24.0)
                                .scaleEffect(x: 1, y: -1)
                                .shadow(radius: 2, y: 2)
                                .rotationEffect(.degrees(90))
                            Base_Mountain(xOffset: 0.5)
                                .fill(Color.colorAccent)
                                .previewLayout(.sizeThatFits)
                                .frame(width: 18.0, height: 20.0)
                                .scaleEffect(x: 1, y: -1)
                                .shadow(radius: 1, y: 1)
                                .padding(.bottom, 10.0)
                                .rotationEffect(.degrees(90))
                            Base_Mountain(xOffset: 0.5)
                                .fill(Color.colorThird)
                                .previewLayout(.sizeThatFits)
                                .frame(width: 12.0, height: 16.0)
                                .scaleEffect(x: 1, y: -1)
                                .padding(.bottom, 20.0)
                                .rotationEffect(.degrees(90))
                        }
                })
        }.edgesIgnoringSafeArea(.all)
}
}



struct Options_Landscape_Previews: PreviewProvider {
    static var previews: some View {
        Options_Landscape()
    }
}
