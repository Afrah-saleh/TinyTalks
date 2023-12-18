//
//  FoodCards.swift
//  TinyTalks
//
//  Created by Afrah Saleh on 05/06/1445 AH.
//

import SwiftUI
import Foundation
struct FoodCards : Identifiable{
    let id = UUID()
    let Image : String
    let Label : String
    
}
extension FoodCards {
    static var FoodCard : [FoodCards] =
    [FoodCards(Image: "Apple" , Label:"apple"),
     FoodCards(Image: "banana", Label: "Banana"),
     FoodCards(Image: "chocolate", Label: "Chocolate"),
     FoodCards(Image: "coockies", Label: "Coockies"),
     FoodCards(Image: "Dounate", Label: "Dounate"),
     FoodCards(Image: "Egg", Label: "Egg toast"),
     FoodCards(Image: "icecream", Label: "Ice Cream")]
}
