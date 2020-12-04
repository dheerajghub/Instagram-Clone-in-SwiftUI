//
//  PostData.swift
//  InstagramClone
//
//  Created by Dheeraj Kumar Sharma on 03/12/20.
//

import Foundation

var PostData: [PostDataModel] = [
    
    PostDataModel(id: UUID(), profileImage: "demo", userName: "dheeraj.iosdev", location: nil, postImage: nil, dimensionImage: nil, isLiked: true, isSaved: true, likes: nil, caption: "Hi Guys! Today in design to code series I've come up with SwiftUI project hope it helps you!.", time: "2 hours ago", isSponsored: false, isVideo: true, dimensionVideo: Dimensions(width: 640, height: 636), videoUrl:"demo" , views: 1200),
    
    PostDataModel(id: UUID(), profileImage: "user1", userName: "shubham_iosdev", location: "Bengaluru - ( Karnataka ) India", postImage: "post1", dimensionImage: Dimensions(width: 1080, height: 1080), isLiked: true, isSaved: false, likes: 380, caption: "Hey guys, learning about Widgets today. With the help of widgets, you can provide information about your apps without even opening it. You can customize it however you like, and they come in three sizes. I felt that it was about time that I learned it.", time: "20 hours ago", isSponsored: false, isVideo: false, dimensionVideo: nil, videoUrl:nil, views: nil),
    
    PostDataModel(id: UUID(), profileImage: "user2", userName: "martinsoft", location: "London, United Kingdom", postImage: "post2", dimensionImage: Dimensions(width: 1080, height: 1350), isLiked: false, isSaved: false, likes: 747, caption: "On the 3rd day of #postmas the Apple gods decided my iPhone 12 Pro should arrive early! 🤩", time: "2 months ago", isSponsored: false, isVideo: false, dimensionVideo: nil, videoUrl: nil, views: nil),
    
    PostDataModel(id: UUID(), profileImage: "youtubelogo", userName: "youtubecreatorsindia", location: nil, postImage: "youtube-post", dimensionImage: Dimensions(width: 1000, height: 1000), isLiked: true, isSaved: true, likes: 19822, caption: "Visit YouTube Creator Academy to get started with your channel and make your YouTube debut.", time: "", isSponsored: true, isVideo: false, dimensionVideo: nil, videoUrl:nil, views: nil),
    
    PostDataModel(id: UUID(), profileImage: "demo", userName: "dheeraj.iosdev", location: nil, postImage: "youtube-post", dimensionImage: nil, isLiked: true, isSaved: true, likes: nil, caption: "Hi Guys! Today in design to code series I've come up with SwiftUI project hope it helps you!.", time: "4 days ago", isSponsored: false, isVideo: true, dimensionVideo: Dimensions(width: 640, height: 640), videoUrl:"demo2" , views: 1200)
]
