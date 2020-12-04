//
//  VideoPlayer.swift
//  InstagramClone
//
//  Created by Dheeraj Kumar Sharma on 04/12/20.
//

import AVKit
import SwiftUI

class VideoPlayer: UIView {
    
    var playerLayer = AVPlayerLayer()
    var player = AVPlayer()
    
    let label:UILabel = {
        let l = UILabel()
        l.translatesAutoresizingMaskIntoConstraints = false
        l.text = "Loading..."
        l.font = UIFont.systemFont(ofSize: 15, weight: .semibold)
        l.textColor = .black
        return l
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(label)
        setUpConstraints()
    }
    
    func setUpConstraints(){
        NSLayoutConstraint.activate([
            label.centerYAnchor.constraint(equalTo: centerYAnchor),
            label.centerXAnchor.constraint(equalTo: centerXAnchor)
        ])
    }
    
    func manageData(_ url: URL){
        player = AVPlayer(url:url)
        player.isMuted = true
        player.actionAtItemEnd = .none
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(playerItemDidReachEnd(notification:)),
                                               name: .AVPlayerItemDidPlayToEndTime,
                                               object: player.currentItem)
        player.play()
        playerLayer.player = player
        playerLayer.videoGravity = AVLayerVideoGravity(rawValue: AVLayerVideoGravity.resizeAspectFill.rawValue)
        layer.addSublayer(playerLayer)
    }
    
    @objc func playerItemDidReachEnd(notification: Notification) {
        if let playerItem = notification.object as? AVPlayerItem {
            playerItem.seek(to: CMTime.zero, completionHandler: nil)
        }
    }
    
    func toggleSound(_ toggle:Bool){
        player.isMuted = toggle
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        playerLayer.frame = bounds
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

