//
//  PostData.swift
//  InstagramClone
//
//  Created by Dheeraj Kumar Sharma on 03/12/20.
//

import Foundation

var PostData: [PostDataModel] = [
    PostDataModel(id: UUID(), profileImage: "demo", userName: "dheeraj.iosdev", location: "Shimla, HimachalPradesh", postImage: "demo", dimensionImage: Dimensions(width: 123.0, height: 123.0), isLiked: true, isSaved: false, likes: 834, caption: "This is just test this is test this is test.", time: "2 months ago", isSponsored: false, isVideo: false, dimensionVideo: nil, videoUrl:nil),
    PostDataModel(id: UUID(), profileImage: "demo", userName: "shubham_iosdev", location: "Bangluru, Karnataka", postImage: "demo", dimensionImage: Dimensions(width: 123.0, height: 123.0), isLiked: false, isSaved: false, likes: 534, caption: "This is just test this is test this is test.", time: "2 months ago", isSponsored: false, isVideo: false, dimensionVideo: nil, videoUrl: nil),
    PostDataModel(id: UUID(), profileImage: "youtubelogo", userName: "youtubecreatorsindia", location: nil, postImage: "youtube-post", dimensionImage: Dimensions(width: 123.0, height: 123.0), isLiked: true, isSaved: true, likes: 19822, caption: "Visit YouTube Creator Academy to get started with your channel and make your YouTube debut.", time: "", isSponsored: true, isVideo: false, dimensionVideo: nil, videoUrl:nil),
    PostDataModel(id: UUID(), profileImage: "youtubelogo", userName: "youtubecreatorsindia", location: nil, postImage: "youtube-post", dimensionImage: nil, isLiked: true, isSaved: true, likes: 19822, caption: "Hi Guys! Today in design to code series I've come up with SwiftUI project hope it helps you!.", time: "", isSponsored: false, isVideo: true, dimensionVideo: Dimensions(width: 640, height: 636), videoUrl:"demo"),
    PostDataModel(id: UUID(), profileImage: "demo", userName: "anajai01", location: nil, postImage: "demo", dimensionImage: Dimensions(width: 640, height: 636), isLiked: true, isSaved: false, likes: 34, caption: "test this is test.", time: "2 months ago", isSponsored: false, isVideo: false, dimensionVideo: nil, videoUrl:nil)
]
