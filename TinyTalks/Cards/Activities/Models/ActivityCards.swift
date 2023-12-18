//
//  ActivityCards.swift
//  TinyTalks
//
//  Created by Afrah Saleh on 05/06/1445 AH.
//

import SwiftUI
import Foundation
struct ActivityCards : Identifiable{
    let id = UUID()
    let Image : String
    let Label : String
    
}
extension ActivityCards {
    static var ActivityCard : [ActivityCards] =
    [ActivityCards(Image : "figure.walk", Label:"Walk"),
     ActivityCards(Image: "figure.dance", Label: "Dance"),
     ActivityCards(Image: "figure.play", Label: "Play"),
     ActivityCards(Image: "hand.draw.fill", Label: "Draw"),
     ActivityCards(Image: "figure.basketball", Label: "Basketball"),
     ActivityCards(Image: "figure.hiking", Label: "Hiking"),
     ActivityCards(Image: "figure.jumprope", Label: "Jumprope"),
     ActivityCards(Image: "figure.pool.swim", Label: "Swim"),
     ActivityCards(Image: "figure.mind.and.body", Label: "Yoga"),
     ActivityCards(Image: "figure.outdoor.cycle", Label: "Cycling")]
}
