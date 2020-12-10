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
    
    @State private var bottomSheetShown = false
    
    // MARK:- BODY
    
    var body: some View {
        ZStack {
            NavigationView {
                ScrollView(.vertical, showsIndicators: false){
                    VStack(alignment: .center, spacing: 0) {
                        UserProfileView()
                        HighlightView(data: HighlightData)
                        PostGridView(data: ProfilePostData)
                            .padding(.horizontal, 2)
                    }//: VSTACK
                }//: SCROLL
                .navigationBarTitle("", displayMode: .inline)
                .toolbar {
                    ToolbarItem(placement: .navigationBarLeading) {
                        Text("dheeraj.iosdev")
                            .font(Font.system(size: 22, weight: .bold))
                    }//: TOOLBAR ITEM LEFT
                    
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button(action:{
                            bottomSheetShown.toggle()
                        }){
                           Image("setting")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 22, height: 22)
                        }
//                        HStack(alignment: .center, spacing: 20){
//                            Button(action:{
//                                bottomSheetShown.toggle()
//                            }){
//                               Image("add2")
//                                .resizable()
//                                .scaledToFill()
//                                .frame(width: 22, height: 22)
//                            }
//                        }
                    }//: TOOLBAR ITEM RIGHT
                }
            }//: NAVIGATION
            
            if bottomSheetShown {
                Rectangle()
                    .fill(Color.black)
                    .opacity(0.7)
                    .edgesIgnoringSafeArea(.all)
                    .onTapGesture {
                        bottomSheetShown.toggle()
                    }
            }
            
            GeometryReader { geometry in
                BottomSheetView(
                    isOpen: self.$bottomSheetShown,
                    maxHeight: geometry.size.height * 0.7
                ) {
                    SettingsView()
                }
            }.edgesIgnoringSafeArea(.all)
        }
    }
}

// MARK:- PREVIEW

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
