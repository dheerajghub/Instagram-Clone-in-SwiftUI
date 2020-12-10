//
//  ProfileView.swift
//  InstagramClone
//
//  Created by Dheeraj Kumar Sharma on 02/12/20.
//

import SwiftUI

struct ProfileView: View {
    
    // MARK:- PROPERTIES
    
    init(){
        UINavigationBar.appearance().barTintColor = .white
        UINavigationBar.appearance().shadowImage = UIImage()
    }
    
    // MARK:- BODY
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false){
                VStack(alignment: .center, spacing: 0) {
                    UserProfileView()
                    HighlightView()
                    PostGridView()
                        .padding(.horizontal, 2)
                }//: VSTACK
            }//: SCROLL
            .navigationBarTitle("", displayMode: .inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Text("dheeraj.iosdev")
                        .font(Font.system(size: 22, weight: .bold))
                }//: TOOLBAR ITEM LEFT
            }
        }//: NAVIGATION
    }
}

// MARK:- PREVIEW

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
