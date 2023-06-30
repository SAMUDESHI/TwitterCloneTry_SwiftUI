//
//  TweetCell.swift
//  TwitterClone
//
//  Created by Saavaj Studios on 30/06/23.
//

import SwiftUI

struct TweetCell: View {
    var body: some View {
        VStack{
            HStack(alignment: .top){
                Image("batman")
                    .resizable()
                    .scaledToFill()
                    .clipped()
                    .frame(width: 56,height: 56)
                    .clipShape(Circle())
                    .padding(.leading)
                
                VStack(alignment: .leading){
                    
                    HStack{
                    Text("Mishal Udeshi")
                            .font(.system(size: 14,weight: .semibold))
                        Button(action: {}, label: {
                            Text("@mast_mishalyo •")
                                .font(.system(size: 13,weight: .light))
                                .foregroundColor(.gray)
                        })
                    Text("2w")
                            .font(.system(size: 13,weight: .light))
                            .foregroundColor(.gray)
                            
                    }
                    Text("Well i am here to explore this aswome SwiftUI, time saver.")
                }
            }
            
            HStack(alignment: .bottom,spacing: 5){
                Button(action: {}, label: {
                    Image(systemName: "message")
                        .foregroundColor(.gray)
                        .font(.system(size: 16))
                        .frame(width: 32,height: 32)
                })
                Spacer()
                Button(action: {}, label: {
                    Image(systemName: "arrow.2.squarepath")
                        .foregroundColor(.gray)
                        .font(.system(size: 16))
                        .frame(width: 32,height: 32)
                })
                Spacer()
                Button(action: {}, label: {
                    Image(systemName: "heart")
                        .foregroundColor(.gray)
                        .font(.system(size: 16))
                        .frame(width: 32,height: 32)
                })
                Spacer()
                Button(action: {}, label: {
                    Image(systemName: "bookmark")
                        .foregroundColor(.gray)
                        .font(.system(size: 16))
                        .frame(width: 32,height: 32)
                })
            }.padding(.horizontal)
            .padding(.top)
            
            Divider()
        }
        
    }
}

struct TweetCell_Previews: PreviewProvider {
    static var previews: some View {
        TweetCell()
    }
}
