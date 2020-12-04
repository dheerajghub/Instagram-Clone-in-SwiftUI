//
//  StoryDataModel.swift
//  InstagramClone
//
//  Created by Dheeraj Kumar Sharma on 04/12/20.
//

import SwiftUI

struct StoryDataModel: Identifiable {
    var id = UUID()
    var image: String
    var name: String
    var isSeen: Bool
    var myStory: Bool
    var myStoryActive: Bool
}
