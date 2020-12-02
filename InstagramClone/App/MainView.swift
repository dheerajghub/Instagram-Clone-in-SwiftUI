//
//  MainView.swift
//  InstagramClone
//
//  Created by Dheeraj Kumar Sharma on 02/12/20.
//

import SwiftUI

struct MainView: View {
    // MARK:- PROPERTIES
    
    init(){
        UITabBar.appearance().barTintColor = .white
    }
    
    // MARK:- BODY
    
    var body: some View {
        TabView{
            HomeView()
                .tabItem {
                    Image(systemName: "gear")
                }
            
            ReelsView()
                .tabItem {
                    Image(systemName: "gear")
                }
            
            AddMediaView()
                .tabItem {
                    Image(systemName: "gear")
                }
            
            ActivityView()
                .tabItem {
                    Image(systemName: "gear")
                }
            
            ProfileView()
                .tabItem {
                    Image(systemName: "gear")
                }
        }
    }
}


// MARK:- PREVIEW
struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
