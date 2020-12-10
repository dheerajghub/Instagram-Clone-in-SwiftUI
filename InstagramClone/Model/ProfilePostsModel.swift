//
//  ProfilePostsModel.swift
//  InstagramClone
//
//  Created by Dheeraj Kumar Sharma on 10/12/20.
//

import Foundation

struct ProfilePostModel: Identifiable {
    let id = UUID()
    let image: String
    let type: String
}
