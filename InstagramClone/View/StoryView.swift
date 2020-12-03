//
//  StoryView.swift
//  InstagramClone
//
//  Created by Dheeraj Kumar Sharma on 02/12/20.
//

import SwiftUI

struct StoryView: View {
    // MARK:- PROPERTIES
    
    private let gradient = LinearGradient( gradient: Gradient(colors: [Color.yellow, Color(red: 252/255, green: 175/255, blue: 69/255) , Color.red, Color(red: 225/255, green: 48/255, blue: 108/255), Color(red: 193/255, green: 53/255, blue: 132/255) , Color(red: 131/255, green: 58/255, blue: 180/255)]), startPoint: .bottomLeading, endPoint: .topTrailing)
    
    // MARK:- BODY
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false){
            HStack(alignment: .center, spacing: 5){
                ForEach(0 ..< 10) { item in
                    VStack(alignment: .center, spacing: 10){
                        ZStack {
                            Image("demo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 62, height: 62, alignment: .center)
                                .clipShape(Circle())
                            
                            Circle().stroke(gradient , style: StrokeStyle(lineWidth: 2.5, lineCap: .round))
                                .frame(width: 72, height: 72, alignment: .center)
                        }//: ZSTACK
                        Text("dheeraj.iosdev")
                            .lineLimit(1)
                            .font(Font.system(size: 12, weight: .regular))
                            .frame(width: 81)
                    }//: VSTACK
                }//: LOOP
            }//: HSTACK
            .padding(.horizontal, 15)
            .padding(.vertical, 12)
        }//: SCROLL
    }
}

// MARK:- PREVIEWS

struct StoryView_Previews: PreviewProvider {
    static var previews: some View {
        StoryView()
            .previewLayout(.sizeThatFits)
    }
}
