//
//  PostView.swift
//  InstagramClone
//
//  Created by Dheeraj Kumar Sharma on 02/12/20.
//

import SwiftUI

struct PostView: View {
    // MARK:- PROPERTIES
    @State var postData: PostDataModel
    
    @State private var isLiked: Bool = false
    @State private var isSaved: Bool = false
    @State private var isLikeAnimation: Bool = false
    
    // MARK:- FUNCTION
    
    func hideAnimation(){
        DispatchQueue.main.asyncAfter(deadline: .now() + .milliseconds(800)) {
            isLikeAnimation = false
        }
    }
    
    // MARK:- BODY
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0){
            HStack(alignment: .center, spacing: 10){
                Image(postData.profileImage)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 33, height: 33, alignment: .center)
                    .clipShape(Circle())
                    .overlay(
                        Circle().stroke(Color.gray, lineWidth: 0.5)
                    )
                
                if postData.location != nil && postData.isSponsored == false {
                    VStack(alignment: .leading, spacing: 1){
                        Text(postData.userName)
                            .font(Font.system(size: 14, weight: .semibold))
                        Text(postData.location)
                            .font(Font.system(size: 10))
                    }
                } else if postData.isSponsored {
                    VStack(alignment: .leading, spacing: 1){
                        Text(postData.userName)
                            .font(Font.system(size: 14, weight: .semibold))
                        Text("Sponsored")
                            .font(Font.system(size: 10))
                    }
                } else {
                    Text(postData.userName)
                        .font(Font.system(size: 14, weight: .semibold))
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
            
            ZStack(alignment: .center){
                Image(postData.postImage)
                    .resizable()
                    .scaledToFill()
                    .aspectRatio(5/4, contentMode: .fit)
                    .clipped()
                    .onTapGesture(count: 2) {
                        postData.isLiked = true
                        isLikeAnimation = true
                        hideAnimation()
                    }
                
                Image("white-heart")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 170, height: 170)
                    .scaleEffect(isLikeAnimation ? 1 : 0)
                    .opacity(isLikeAnimation ? 1 : 0)
                    .animation(.spring())
                
            }//: ZSTACK
            
            if postData.isSponsored {
                Button(action:{
                    
                }){
                    HStack(alignment: .center){
                        Text("Learn more")
                            .font(Font.system(size:14, weight: .medium))
                            .foregroundColor(.white)
                        Spacer()
                        Image(systemName: "chevron.right")
                            .foregroundColor(.white)
                            .font(Font.system(size: 14, weight: .medium))
                    }
                    .padding(.vertical, 13)
                    .padding(.horizontal, 15)
                    .background(Color.red)
                }
                Divider()
                    .padding(.horizontal , 15)
            }
            
            HStack(alignment: .center, spacing: 10){
                Button(action:{
                    postData.isLiked = !postData.isLiked
                }){
                    Image(postData.isLiked ? "like-selected" : "like")
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
                    postData.isSaved = !postData.isSaved
                }){
                    Image(postData.isSaved ? "save-selected" : "save")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 30, height: 30, alignment: .center)
                }
            }//: HSTACK
            .padding(.vertical, 8)
            .padding(.horizontal, 15)
            
            if postData.likes != 0 {
                Text("\(postData.likes) likes")
                    .font(Font.system(size: 14, weight: .semibold))
                    .padding(.horizontal, 15)
            }
            
            if postData.caption != nil {
                Group {
                    Text(postData.userName)
                        .font(Font.system(size: 14, weight: .semibold))
                    + Text(" ")
                    + Text(postData.caption)
                        .font(Font.system(size: 14))
                }
                .padding(.horizontal, 15)
                .padding(.vertical, 6)
            }
            
            if !postData.isSponsored {
                Text(postData.time)
                    .foregroundColor(.gray)
                    .font(Font.system(size: 13, weight: .medium))
                    .padding(.horizontal, 15)
                    .padding(.vertical, 7)
            }
            
        }//: VSTACK
    }
}

// MARK:- PREVIEW

struct PostView_Previews: PreviewProvider {
    static var previews: some View {
        PostView(postData: PostData[2])
            .previewLayout(.sizeThatFits)
    }
}
