//
//  MessageView.swift
//  TwitterClone
//
//  Created by Saavaj Studios on 30/06/23.
//

import SwiftUI

struct MessageView: View {
    @State var isShowingBottomSheet: Bool = false
    var body: some View {
        ZStack(alignment: .bottomTrailing){
            ScrollView{
                LazyVStack{
                    ForEach((0..<9)){ _ in
                        NavigationLink(destination: Text("Vaat Karo"), label: {UserCell()})
                        //UserCell()
                    }
                }.padding()
            }
            
            Button(action: {
                self.isShowingBottomSheet.toggle()
            }, label: {
                Image(systemName: "envelope")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 32,height: 32)
                    .padding()
            })
            .background(Color(.systemBlue))
            .foregroundColor(.white)
            .clipShape(Circle())
            .padding()
            .sheet(isPresented: $isShowingBottomSheet, content: {
                SearchView()
            })
        }
        
    }
}

struct MessageView_Previews: PreviewProvider {
    static var previews: some View {
        MessageView()
    }
}
