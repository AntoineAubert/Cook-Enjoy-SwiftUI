//
//  Date.swift
//  Projet_de_Programmation
//
//  Created by Antoine Aubert on 17/11/2020.
//

import Foundation

class CookLibrary: ObservableObject {
   @Published var testcook = [
        Cook(imageURL:URL(string: "https://images.pexels.com/photos/5591731/pexels-photo-5591731.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"), name: "FIT", isFavourite: false),
        Cook(imageURL:URL(string:"https://images.pexels.com/photos/5589856/pexels-photo-5589856.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"), name: "Gourmand", isFavourite: false),
        Cook(imageURL:URL(string:"https://images.pexels.com/photos/5107161/pexels-photo-5107161.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"), name: "Normal", isFavourite: false),
    ]
}



let listOfURLs = [

    URL(string:"https://images.pexels.com/photos/196643/pexels-photo-196643.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
    URL(string:"https://images.pexels.com/photos/3186654/pexels-photo-3186654.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
    URL(string:"https://images.pexels.com/photos/3370704/pexels-photo-3370704.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
    URL(string:"https://images.pexels.com/photos/2983101/pexels-photo-2983101.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
    URL(string:"https://images.pexels.com/photos/1775043/pexels-photo-1775043.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
    URL(string:"https://images.pexels.com/photos/2130134/pexels-photo-2130134.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
    URL(string:"https://images.pexels.com/photos/1435706/pexels-photo-1435706.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
    URL(string:"https://images.pexels.com/photos/776945/pexels-photo-776945.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
    URL(string:"https://images.pexels.com/photos/3338681/pexels-photo-3338681.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
    URL(string:"https://images.pexels.com/photos/1030947/pexels-photo-1030947.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
    

]
