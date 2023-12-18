//
//  Cards.swift
//  TinyTalks
//
//  Created by Afrah Saleh on 05/06/1445 AH.
//
import SwiftUI
import Foundation
struct Cards : Identifiable{
    let id = UUID()
    let Image : String
    let Label : String
    
}
extension Cards {
    static var Card : [Cards] =
    [Cards(Image : "figure.wave", Label:"I"),
     Cards(Image: "lightbulb.min.fill", Label: "Want"),
     Cards(Image: "hand.thumbsdown.fill", Label: "No"),
     Cards(Image: "hand.thumbsup.fill", Label: "Yes"),
     Cards(Image: "ear.fill", Label: "Listen"),
     Cards(Image: "hand.raised.app", Label: "Need")
    ]
}
