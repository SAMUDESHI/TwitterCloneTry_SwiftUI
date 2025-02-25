//
//  SearchView.swift
//  TwitterClone
//
//  Created by Saavaj Studios on 30/06/23.
//

import SwiftUI

struct SearchView: View {
    @State var text : String = ""
    var body: some View {
        VStack(alignment: .leading){
            Searchbar(text: $text)
                .padding()
            ScrollView{
                LazyVStack{
                    ForEach((0..<9)){ _ in
                        UserCell()
                    }
                }.padding()
            }
        }
       // .navigationBarTitle("Search")
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
