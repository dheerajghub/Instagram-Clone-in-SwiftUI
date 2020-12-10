//
//  UserProfileView.swift
//  InstagramClone
//
//  Created by Dheeraj Kumar Sharma on 09/12/20.
//

import SwiftUI

struct UserProfileView: View {
    var body: some View {
        VStack(alignment: .center, spacing: 0){
            Divider()
            Button(action:{
                
            }){
                Text("View Professional Resources")
                    .font(Font.system(size: 11, weight: .medium))
                    .frame(width:.infinity)
                    .padding(.vertical, 12)
                    .padding(.horizontal, 30)
            }
            Divider()
            VStack(alignment: .leading){
                UserInfoView()
                Text("Dheeraj - iOS Developer")
                    .font(Font.system(size: 13, weight: .medium))
                    .padding(.top, 5)
                    .padding(.bottom, 1)
                Text("👨‍💻 iOS Developer, UI / UX Designer\n🇮🇳 Himachal Pradesh, India\n📪 DM me for any query regarding iOS\n🔗Check out this link to buy coolors app👇")
                    .font(Font.system(size: 13, weight: .regular))
                + Text("\ncampsite.bio/dheeraj.iosdev")
                    .font(Font.system(size: 13, weight: .medium))
                    .foregroundColor(Color(red:9/255, green:55/255, blue:107/255))
                ProfileActionsView()
                    .padding(.top, 10)
            }//: VSTACK
            .padding(.horizontal, 15)
            .padding(.vertical, 10)
        }
    }
}

struct UserProfileView_Previews: PreviewProvider {
    static var previews: some View {
        UserProfileView()
            .previewLayout(.sizeThatFits)
            .padding(.horizontal, 15)
            .padding(.vertical, 10)
    }
}
