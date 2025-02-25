//
//  Searchbar.swift
//  TwitterClone
//
//  Created by Saavaj Studios on 25/02/25.
//

import SwiftUI

struct Searchbar: View {
    @Binding var text: String
    var body: some View {
        TextField("Search Here...", text: $text)
            .padding(8)
            .padding(.horizontal,24)
            .background(Color(.systemGray6))
            .cornerRadius(8)
            .overlay(
                HStack{
                    if #available(iOS 15.0, *) {
                        Image(systemName: "magnifyingglass")
                            .foregroundStyle(.gray)
                            .frame(maxWidth: .infinity,alignment: .leading)
                            .padding(.leading,8)
                    } else {
                        // Fallback on earlier versions
                    }
                }
            )
            .padding(.horizontal,10)
    }
}

#Preview {
    Searchbar(text: .constant(""))
}
