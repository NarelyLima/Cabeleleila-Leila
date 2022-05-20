//
//  Directory.swift
//  Cabeleleila Leila
//
//  Created by Narely Lima on 13/05/22.
//

import Foundation
import SwiftUI


struct Lista:Identifiable {
    let id: String = UUID().uuidString
    let name:String
    let icon:String?
    var isCompleted:Bool
    var children:[Lista]
    let images: [String]?
   
    
    
    init(id: String = UUID().uuidString, name:String, icon:String? = nil, isCompleted: Bool? = nil, children: [Lista] = [], images: [String]? = nil) {
        self.name = name
        self.icon = icon
        self.isCompleted = isCompleted ?? false
        self.children = children
        self.images = images
        
    }
    func updateCompletion() -> Lista {
        return Lista(id: id, name: name, icon: icon, isCompleted: !isCompleted, children: children, images: images)
    }
}




