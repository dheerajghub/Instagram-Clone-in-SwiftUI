//
//  PlayerView.swift
//  InstagramClone
//
//  Created by Dheeraj Kumar Sharma on 04/12/20.
//

import SwiftUI

struct PlayerView: UIViewRepresentable {
    
    var url: URL
    
    func makeUIView(context: Context) -> VideoPlayer {
        return VideoPlayer()
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        uiView.manageData(url)
    }
    
}
