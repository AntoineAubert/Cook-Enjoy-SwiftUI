//
//  Cook&EnjoyCellView.swift
//  Projet_de_Programmation
//
//  Created by Antoine Aubert on 17/11/2020.
//

import SwiftUI
import KingfisherSwiftUI

struct Cook_EnjoyCellView: View {
    
    let cook:Cook
    var body: some View {
        HStack
        {
            KFImage(cook.imageURL)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 80, height:80)
                .clipped()
                .cornerRadius(10)
                .padding(.trailing, 8)
            VStack(alignment: .leading)
            {
                Text(cook.name)
                .font(.title2)
                .fontWeight(.semibold)
                
            }
            Spacer()
        }
        .padding(10)
    }
}

struct Cook_EnjoyCellView_Previews: PreviewProvider {
    
   private static let testcook = Cook(imageURL:URL(string: "https://images.pexels.com/photos/5591731/pexels-photo-5591731.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"), name: "FIT",
    isFavourite: false)
    
    
    static var previews: some View {
        Cook_EnjoyCellView(cook: testcook)
            .previewLayout(.sizeThatFits)
    }
}
