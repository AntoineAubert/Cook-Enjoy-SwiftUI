//
//  Cook&Enjoy.swift
//  Projet_de_Programmation
//
//  Created by Antoine Aubert on 17/11/2020.
//

import Foundation


struct Cook:Identifiable
{   let id=UUID().uuidString
    let imageURL:URL?
    let name:String
    let isFavourite: Bool
    let description:String
    
    init (imageURL:URL?,name:String,isFavourite:Bool)
    {
        self.imageURL=imageURL
        self.name=name
        self.isFavourite=isFavourite
        self.description = ""
    }
    
    init(config:NewCookConfig) {
        self.imageURL = config.imageURL
        self.name = config.name
        self .description = config.description
        self.isFavourite = false
        
    }
}
