//
//  ContentView.swift
//  Projet_de_Programmation
//
//  Created by Antoine Aubert on 17/11/2020.
//

import SwiftUI

struct HomeView: View {
    @ObservedObject var cookLibrary: CookLibrary
    @State private var isShowingCookCreation=false
    
    
    var body: some View {
        NavigationView{
            ScrollView {
                VStack{
                    ForEach(cookLibrary.testcook){
                       cook in
                        ZStack{
                            RoundedRectangle(cornerRadius: 16 ,style:.continuous)
                                .fill(Color.white)
                                .shadow(color: Color(Color.RGBColorSpace.sRGB, white: 0, opacity: 0.2), radius: 4)
                            Cook_EnjoyCellView(cook:cook)
                        }
                    }
                }.padding(.horizontal, 16)
            }.navigationTitle(Text("Cook&Enjoy"))
        }
        PlusButtonView(action: {
            isShowingCookCreation.toggle()
        }).sheet(isPresented: $isShowingCookCreation, content: {
            CookCreationView(cookLibrary: cookLibrary)
        })
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    
    @StateObject static var cookLibrary = CookLibrary()
    
    static var previews: some View {
        HomeView(cookLibrary:cookLibrary)
    }
}
