//
//  HomeView.swift
//  InstagramClone
//
//  Created by Dheeraj Kumar Sharma on 02/12/20.
//

import SwiftUI

struct HomeView: View {
    // MARK:- PROPERTIES
    
    init(){
        UINavigationBar.appearance().barTintColor = .white
    }
    
    // MARK:- BODY
    
    var body: some View {
        NavigationView {
            Text("Hello World")
            .navigationBarTitle("", displayMode: .inline)
                .toolbar {
                    ToolbarItem(placement: .navigationBarLeading) {
                        Text("Instagram")
                            .font(Font.custom("Times-Bold", size: 20))
                    }//: TOOLBAR ITEM LEFT
        
                    ToolbarItem(placement: .navigationBarTrailing) {
                        HStack(alignment:.center, spacing:15){
                            Button(action:{
                                print("Go to Search")
                            }){
                                Image(systemName: "gear")
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 28, height: 28, alignment: .center)
                            }
                            
                            Button(action:{
                                print("Go to messages")
                            }){
                                ZStack{
                                    Image(systemName: "gear")
                                        .resizable()
                                        .scaledToFill()
                                        .frame(width: 28, height: 28, alignment: .center)
                                    Text("3")
                                        .font(Font.system(size: 13, weight: .bold))
                                        .frame(width:16, height:16)
                                        .background(Color.red)
                                        .foregroundColor(.white)
                                        .clipShape(Circle())
                                        .offset(
                                            x: 9,
                                            y: -9
                                        )
                                }
                            }
                        }//: HSTACK
                    }//: TOOLBAR ITEM RIGHT
                }//: TOOLBAR
        }//: NAVIGATION VIEW
    }
}

// MARK:- PREVIEW

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
