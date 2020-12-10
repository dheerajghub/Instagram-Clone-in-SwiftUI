//
//  HighlightView.swift
//  InstagramClone
//
//  Created by Dheeraj Kumar Sharma on 09/12/20.
//

import SwiftUI

struct HighlightView: View {
    // MARK:- PROPERTIES
    
    let data: [HighlightDataModel]
        
    // MARK:- BODY
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false){
            HStack(alignment: .center, spacing: 10){
                ForEach(data) { item in
                    VStack(alignment: .center, spacing: 8){
                        ZStack {
                            Image(item.cover)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 58, height: 58, alignment: .center)
                                .clipShape(Circle())
                            
                            Circle().stroke(Color(red: 220/255, green: 220/255, blue: 220/255) , style: StrokeStyle(lineWidth: 1, lineCap: .round))
                                .frame(width: 68, height: 68, alignment: .center)
                        }//: ZSTACK
                    
                        Text(item.name)
                            .lineLimit(1)
                            .font(Font.system(size: 12, weight: .regular))
                            .frame(width: 75)
                            .foregroundColor(.primary)
                    }//: VSTACK
                }//: LOOP
            }//: HSTACK
            .padding(.horizontal, 15)
            .padding(.vertical, 10)
        }//: SCROLL
    }
}

struct HighlightView_Previews: PreviewProvider {
    static var previews: some View {
        HighlightView(data: HighlightData)
            .previewLayout(.sizeThatFits)
    }
}
