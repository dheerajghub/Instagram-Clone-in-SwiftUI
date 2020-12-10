//
//  SettingsView.swift
//  InstagramClone
//
//  Created by Dheeraj Kumar Sharma on 10/12/20.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators:false) {
            ForEach(SettingListData){ item in
                VStack(alignment: .leading){
                    HStack(alignment: .center, spacing: 15){
                        Image(item.image)
                            .resizable()
                            .scaledToFill()
                            .frame(width: 30, height: 30)
                        Text(item.title)
                            .font(Font.system(size: 17, weight: .regular))
                    }//: HSTACK
                    .padding(.vertical, 8)
                    .padding(.horizontal, 15)
                    Divider()
                        .padding(.leading, 50)
                }//: VSTACK
            }//: LOOP
        }//: SCROLL
        .background(Color.white)
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
            .previewLayout(.sizeThatFits)
    }
}
