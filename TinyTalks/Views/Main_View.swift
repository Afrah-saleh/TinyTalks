//
//  Main_View.swift
//  TinyTalks
//
//  Created by Afrah Saleh on 05/06/1445 AH.
//

import SwiftUI

struct Main_View: View {
    var body: some View {
        ZStack{
                     Color("Back")
                    .ignoresSafeArea()
            ScrollView(.vertical, showsIndicators: false) {
                VStack{
                    CardsView()
                    ActivityCardsView()
                    FoodCardsView()
                }
            }
        }
    }
}

#Preview {
    Main_View()
}
