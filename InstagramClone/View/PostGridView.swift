//
//  PostGridView.swift
//  InstagramClone
//
//  Created by Dheeraj Kumar Sharma on 10/12/20.
//

import SwiftUI

struct PostGridView: View {
    // MARK:- PROPERTIES
    
    let gridLayout:[GridItem] =  Array(repeating: .init(.flexible(), spacing:2), count: 3)
    
    let data: [ProfilePostModel]
    
    // MARK:- BODY
    
    var body: some View {
        LazyVGrid(columns: gridLayout, spacing:2){
            ForEach(data) { item in
                Image(item.image)
                    .resizable()
                    .scaledToFill()
                    .frame(height: (UIScreen.main.bounds.width - 8) / 3)
                    .clipped()
                    .overlay(
                        ZStack{
                            Image(item.type == "video" ? "video" : "multiple")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 28, height: 28)
                                .padding(5)
                        }
                        , alignment: .topTrailing
                    )
            }//: LOOP
        }//: GRID
    }
}

// MARK:- PREVIEW

struct PostGridView_Previews: PreviewProvider {
    static var previews: some View {
        PostGridView(data: ProfilePostData)
            .padding(.horizontal , 2)
    }
}
