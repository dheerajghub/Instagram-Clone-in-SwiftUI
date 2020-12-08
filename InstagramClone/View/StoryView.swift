//
//  StoryView.swift
//  InstagramClone
//
//  Created by Dheeraj Kumar Sharma on 02/12/20.
//

import SwiftUI

struct StoryView: View {
    // MARK:- PROPERTIES
    @State var storyData: [StoryDataModel]
    
    private let gradient = LinearGradient( gradient: Gradient(colors: [Color.yellow, Color(red: 252/255, green: 175/255, blue: 69/255) , Color.red, Color(red: 225/255, green: 48/255, blue: 108/255), Color(red: 193/255, green: 53/255, blue: 132/255) , Color(red: 131/255, green: 58/255, blue: 180/255)]), startPoint: .bottomLeading, endPoint: .topTrailing)
    
    @State private var gridLayout:[GridItem] = [GridItem(.flexible())]
    
    // MARK:- BODY
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false){
            // We can also use HStack instead of LazyHGrid but optimization is must
            // VStack create all the views at once, which will take alot of time to load. for example
            // HStack{
            //      ForEach(0..<500){
            //          Text("HelloWorld")
            //      }
            //  }
            LazyHGrid(rows: gridLayout, alignment: .center, spacing: 5) {
                ForEach(storyData) { story in
                    VStack(alignment: .center, spacing: 8){
                        ZStack {
                            Image(story.image)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 62, height: 62, alignment: .center)
                                .clipShape(Circle())
                            
                            if story.myStory && story.myStoryActive && !story.isSeen {
                                Circle().stroke(gradient , style: StrokeStyle(lineWidth: 2.5, lineCap: .round))
                                    .frame(width: 72, height: 72, alignment: .center)
                            } else if story.myStory && story.myStoryActive && story.isSeen{
                                Circle().stroke(Color(red: 220/255, green: 220/255, blue: 220/255) , style: StrokeStyle(lineWidth: 1, lineCap: .round))
                                    .frame(width: 72, height: 72, alignment: .center)
                            } else if story.myStory && !story.myStoryActive {
                                ZStack{
                                    Circle()
                                        .foregroundColor(.blue)
                                        .frame(width:25, height:25)
                                    Image(systemName: "plus")
                                        .font(Font.system(size: 14, weight: .bold))
                                        .foregroundColor(.white)
                                        .frame(width:20, height:20)
                                    
                                }//: ZSTACK
                                .overlay(Circle().stroke(Color.white, lineWidth:2.5))
                                .offset(x:20 , y:20)
                            } else if !story.isSeen{
                                Circle().stroke(gradient , style: StrokeStyle(lineWidth: 2.5, lineCap: .round))
                                    .frame(width: 72, height: 72, alignment: .center)
                            } else {
                                Circle().stroke(Color(red: 220/255, green: 220/255, blue: 220/255) , style: StrokeStyle(lineWidth: 1, lineCap: .round))
                                    .frame(width: 72, height: 72, alignment: .center)
                            }
                        }//: ZSTACK
                    
                        Text(story.name)
                            .lineLimit(1)
                            .font(Font.system(size: 12, weight: .regular))
                            .frame(width: 81)
                            .foregroundColor(story.isSeen ? .secondary : .primary)
                    }//: VSTACK
                }//: LOOP
            }//: GRID
            .padding(.horizontal, 15)
            .padding(.vertical, 12)
        }//: SCROLL
    }
}

// MARK:- PREVIEWS

struct StoryView_Previews: PreviewProvider {
    static var previews: some View {
        StoryView(storyData: StoryData)
            .previewLayout(.sizeThatFits)
    }
}
