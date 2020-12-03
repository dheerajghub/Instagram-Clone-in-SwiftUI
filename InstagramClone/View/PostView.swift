//
//  PostView.swift
//  InstagramClone
//
//  Created by Dheeraj Kumar Sharma on 02/12/20.
//

import SwiftUI

struct PostView: View {
    // MARK:- PROPERTIES
    @State private var height = CGFloat.zero
    
    // MARK:- BODY
    
    var body: some View {
        VStack(alignment: .center, spacing: 0){
            HStack(alignment: .center, spacing: 10){
                Image("demo")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 33, height: 33, alignment: .center)
                    .clipShape(Circle())
                    .overlay(
                        Circle().stroke(Color.gray, lineWidth: 0.5)
                    )
                VStack(alignment: .leading, spacing: 1){
                    Text("dheeraj.iosdev")
                        .font(Font.system(size: 14, weight: .semibold))
                    Text("Shimla, Himachal, India")
                        .font(Font.system(size: 10))
                }
                Spacer()
                Button(action:{
                    print("options")
                }){
                    Image("more")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 30, height: 30, alignment: .center)
                }
            }//: HSTACK
            .padding(.vertical, 10)
            .padding(.horizontal, 12)
            
            Divider()
            
            Image("demo")
                .resizable()
                .scaledToFill()
                .aspectRatio(5/4, contentMode: .fit)
                .clipped()
            
            HStack(alignment: .center, spacing: 10){
                Button(action:{
                    
                }){
                    Image("like-selected")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 30, height: 30, alignment: .center)
                }
                
                Button(action:{
                    
                }){
                    Image("comment")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 30, height: 30, alignment: .center)
                }
                
                Button(action:{
                    
                }){
                    Image("share")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 30, height: 30, alignment: .center)
                }
                
                Spacer()
                
                Button(action:{
                    
                }){
                    Image("save")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 30, height: 30, alignment: .center)
                }
            }//: HSTACK
            .padding(.vertical, 5)
            .padding(.horizontal, 10)
        }//: VSTACK
    }
}

// MARK:- PREVIEW

struct PostView_Previews: PreviewProvider {
    static var previews: some View {
        PostView()
            .previewLayout(.sizeThatFits)
    }
}
