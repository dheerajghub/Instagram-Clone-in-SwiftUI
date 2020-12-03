//
//  PostData.swift
//  InstagramClone
//
//  Created by Dheeraj Kumar Sharma on 03/12/20.
//

import Foundation

var PostData: [PostDataModel] = [
    PostDataModel(id: UUID(), profileImage: "demo", userName: "dheeraj.iosdev", location: "Shimla, HimachalPradesh", postImage: "demo", isLiked: true, isSaved: false, likes: 834, caption: "This is just test this is test this is test.", time: "2 months ago", isSponsored: false),
    PostDataModel(id: UUID(), profileImage: "demo", userName: "shubham_iosdev", location: "Bangluru, Karnataka", postImage: "demo", isLiked: false, isSaved: false, likes: 534, caption: "This is just test this is test this is test.", time: "2 months ago", isSponsored: false),
    PostDataModel(id: UUID(), profileImage: "youtubelogo", userName: "youtubecreatorsindia", location: nil, postImage: "youtube-post", isLiked: true, isSaved: true, likes: 19822, caption: "Visit YouTube Creator Academy to get started with your channel and make your YouTube debut.", time: "", isSponsored: true),
    PostDataModel(id: UUID(), profileImage: "demo", userName: "anajai01", location: nil, postImage: "demo", isLiked: true, isSaved: false, likes: 34, caption: "test this is test.", time: "2 months ago", isSponsored: false)
]
