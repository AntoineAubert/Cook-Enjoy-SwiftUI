//
//  SwiftUIView.swift
//  Projet_de_Programmation
//
//  Created by Antoine Aubert on 30/11/2020.
//

import SwiftUI

struct PlusButtonView: View {
    
    let action: ()-> Void
    var body: some View {
        Button(action:action, label: {
            ZStack
            {
                Circle()
                    .foregroundColor(.blue)
                    .frame(width: 70, height: 70)
                Image(systemName: "plus")
                    .foregroundColor(.white)
                    .font(.system(size: 24,weight:.semibold))
            }.shadow(radius: 10)
        })
    }
}

struct PlusButtonView_Previews: PreviewProvider {
    static var previews: some View {
        PlusButtonView(action: {})
            .previewLayout(.sizeThatFits)
            .padding()
        
    }
}
