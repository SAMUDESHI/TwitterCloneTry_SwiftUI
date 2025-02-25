//
//  UserCell.swift
//  TwitterClone
//
//  Created by Saavaj Studios on 25/02/25.
//

import SwiftUI

struct UserCell: View {
    var body: some View {
        VStack {
            HStack(alignment: .top, spacing: 10){
                //Image
                Image("batman")
                    .resizable()
                    .scaledToFill()
                    .clipped()
                    .frame(width: 56,height: 56)
                    .clipShape(Circle())
                    .padding(.leading)
                
                VStack(alignment: .leading,spacing: 10){
                    
                    
                    
                    
                    Text("Mishal Udeshi")
                        .font(.system(size: 14,weight: .semibold))
                        .foregroundColor(.black)
                    
                    
                    
                    
                    Text("Mishal UDesi")
                        .font(.system(size: 13,weight: .light))
                        .foregroundColor(.gray)
                }
                .padding(.top,5)
                Spacer()
            }
        }
        Divider()
    }
}

#Preview {
    UserCell()
}
