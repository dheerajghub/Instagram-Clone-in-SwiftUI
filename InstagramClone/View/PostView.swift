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
    @State private var isMute: Bool = true
    
    // MARK:- FUNCTION
    
    func hideAnimation(){
        DispatchQueue.main.asyncAfter(deadline: .now() + .milliseconds(800)) {
            isLikeAnimation = false
        }
    }
    
    func estimatedHeight(_ width:Float , _ height: Float) -> CGFloat {
        let ratio = CGFloat(height) / CGFloat(width)
        let estimatedH = ratio * UIScreen.main.bounds.width
        return estimatedH
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
                            .font(Font.system(size: 12))
                    }
                } else if postData.isSponsored {
                    VStack(alignment: .leading, spacing: 1){
                        Text(postData.userName)
                            .font(Font.system(size: 14, weight: .semibold))
                        Text("Sponsored")
                            .font(Font.system(size: 12))
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
            
            if !postData.isVideo {
                ZStack(alignment: .center){
                    Image(postData.postImage)
                        .resizable()
                        .scaledToFill()
                        .frame(width: UIScreen.main.bounds.width, height: estimatedHeight(postData.dimensionImage.width,postData.dimensionImage.height))
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
            } else {
                ZStack(alignment: .center){
                    
                    if Bundle.main.url(forResource: postData.videoUrl, withExtension: "mp4") != nil {
                        PlayerView(url: Bundle.main.url(forResource: postData.videoUrl, withExtension: "mp4")!, isMute: $isMute)
                           .frame(width: UIScreen.main.bounds.width, height: estimatedHeight(postData.dimensionVideo.width,postData.dimensionVideo.height))
                            .onTapGesture(count: 2) {
                                postData.isLiked = true
                                isLikeAnimation = true
                                hideAnimation()
                            }
                    }
                    
                    Image("white-heart")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 170, height: 170)
                        .scaleEffect(isLikeAnimation ? 1 : 0)
                        .opacity(isLikeAnimation ? 1 : 0)
                        .animation(.spring())
                }//: ZSTACK
                .background(Color(red:230/255, green:230/255 ,blue:230/255))
                .overlay(
                    Button(action:{
                        isMute.toggle()
                    }) {
                        ZStack{
                            Circle()
                                .fill(Color(red:0, green:0, blue:0))
                                .frame(width:30, height:30)
                                .opacity(0.8)
                            
                            Image(isMute ? "mute" : "sound")
                                .resizable()
                                .renderingMode(.template)
                                .foregroundColor(.white)
                                .scaledToFill()
                                .frame(width: 17, height: 17)
                                .clipShape(Circle())
                        }
                    }
                    .padding(13)
                    ,alignment: .bottomTrailing
                )
            }
            
            if postData.isSponsored {
                Button(action:{
                    
                }){
                    HStack(alignment: .center){
                        Text("Learn more")
                            .font(Font.system(size:14, weight: .medium))
                            .foregroundColor(.blue)
                        Spacer()
                        Image(systemName: "chevron.right")
                            .foregroundColor(.blue)
                            .font(Font.system(size: 14, weight: .medium))
                    }
                    .padding(.vertical, 13)
                    .padding(.horizontal, 15)
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
            
            if postData.likes != 0 && !postData.isVideo {
                Text("\(postData.likes) likes")
                    .font(Font.system(size: 14, weight: .semibold))
                    .padding(.horizontal, 15)
            } else if postData.views != 0 {
                Text("\(postData.views) views")
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
        PostView(postData: PostData[4])
            .previewLayout(.sizeThatFits)
    }
}
