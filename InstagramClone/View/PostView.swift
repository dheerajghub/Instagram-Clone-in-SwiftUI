//
//  PostView.swift
//  InstagramClone
//
//  Created by Dheeraj Kumar Sharma on 02/12/20.
//

import SwiftUI

struct PostView: View {
    // MARK:- PROPERTIES
    @State private var isLiked: Bool = false
    @State private var isSaved: Bool = false
    
    // MARK:- BODY
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0){
            HStack(alignment: .center, spacing: 10){
                Image("demo")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 33, height: 33, alignment: .center)
                    .clipShape(Circle())
                    .overlay(
                        Circle().stroke(Color.gray, lineWidth: 0.5)
                    )
                VStack(alignment: .leading, spacing: 1){
                    Text("dheeraj.iosdev")
                        .font(Font.system(size: 14, weight: .semibold))
                    Text("Shimla, Himachal, India")
                        .font(Font.system(size: 10))
                }
                Spacer()
                Button(action:{
                    print("options")
                }){
                    Image("more")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 30, height: 30, alignment: .center)
                }
            }//: HSTACK
            .padding(.vertical, 10)
            .padding(.horizontal, 12)
            
            Divider()
            
            Image("demo")
                .resizable()
                .scaledToFill()
                .aspectRatio(5/4, contentMode: .fit)
                .clipped()
                .onTapGesture(count: 2) {
                    isLiked = true
                }
            
            HStack(alignment: .center, spacing: 10){
                Button(action:{
                    isLiked.toggle()
                }){
                    Image(isLiked ? "like-selected" : "like")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 30, height: 30, alignment: .center)
                }
                
                Button(action:{
                    
                }){
                    Image("comment")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 30, height: 30, alignment: .center)
                }
                
                Button(action:{
                    
                }){
                    Image("share")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 30, height: 30, alignment: .center)
                }
                
                Spacer()
                
                Button(action:{
                    isSaved.toggle()
                }){
                    Image(isSaved ? "save-selected" : "save")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 30, height: 30, alignment: .center)
                }
            }//: HSTACK
            .padding(.vertical, 8)
            .padding(.horizontal, 15)
            
            Text("1,845 likes")
                .font(Font.system(size: 14, weight: .semibold))
                .padding(.horizontal, 15)
            
            Group {
                Text("ui_gradient")
                    .font(Font.system(size: 14, weight: .semibold))
                + Text(" ")
                + Text("This is Awesome! This is Awesome! This is Awesome! This is Awe some! This is Awesome! This is Awe some! This is Awesome! This is Awesome! This is Awe some! This is Awesome! This is Awes ome! This is Aw esome! This is Awe some! This is Awe some! This is Awesome! This is Awes ome! This is Awesome! This is Awesome! This is Aw esome!")
                    .font(Font.system(size: 14))
            }
            .padding(.horizontal, 15)
            .padding(.vertical, 3)
            
            Text("3 hours ago")
                .foregroundColor(.gray)
                .font(Font.system(size: 13, weight: .medium))
                .padding(.horizontal, 15)
                .padding(.vertical, 7)
            
        }//: VSTACK
    }
}

// MARK:- PREVIEW

struct PostView_Previews: PreviewProvider {
    static var previews: some View {
        PostView()
            .previewLayout(.sizeThatFits)
    }
}
