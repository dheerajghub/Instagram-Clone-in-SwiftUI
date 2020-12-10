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
    
    // MARK:- BODY
    
    var body: some View {
        LazyVGrid(columns: gridLayout, spacing:2){
            ForEach(0 ..< 70) { item in
                Image("demo")
                    .resizable()
                    .scaledToFill()
                    .frame(height: (UIScreen.main.bounds.width - 8) / 3)
            }//: LOOP
        }//: GRID
    }
}

// MARK:- PREVIEW

struct PostGridView_Previews: PreviewProvider {
    static var previews: some View {
        PostGridView()
            .padding(.horizontal , 2)
    }
}
