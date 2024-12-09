//
//  CookCrationViews.swift
//  Projet_de_Programmation
//
//  Created by Antoine Aubert on 30/11/2020.
//

import SwiftUI

struct CookCreationView: View {
    
    @ObservedObject var cookLibrary:CookLibrary
    @State var CookConfig = NewCookConfig()
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    TextField("Cook name",text:$CookConfig.name)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                    TextEditor(text:$CookConfig.description)
                .border(Color.gray,width:1)
                .frame(height:150)
        }.padding()
                CoverSelectionView(selectedURL: $CookConfig.imageURL)
    }.navigationTitle("New Group Cook")
            .navigationBarItems(trailing:Button(action:{
                let newCook=Cook(config: CookConfig)
                cookLibrary.testcook.append(newCook)
                
                presentationMode.wrappedValue.dismiss()
                
            },label:{
                Text("Confirm")
            }))
    }
    }
}

struct CookCreationView_Previews: PreviewProvider {
    @StateObject static var cookLibrary=CookLibrary()
    static var previews: some View {
        CookCreationView(cookLibrary: cookLibrary)
    }
}
