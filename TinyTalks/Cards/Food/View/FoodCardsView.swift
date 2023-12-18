//
//  FoodCardsView.swift
//  TinyTalks
//
//  Created by Afrah Saleh on 05/06/1445 AH.
//

import SwiftUI

struct FoodCardsView: View {
    @State private var foodCard: [FoodCards] = FoodCards.FoodCard
    var body: some View {
        Text ("Food")
            .fontWeight(.bold)
            .font(.system(size: 42))
            .frame(maxWidth: .infinity, alignment: .leading)
            //.padding(.all)
            .padding([.leading, .trailing, .top])
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: -20) {
                ForEach(FoodCards.FoodCard) { foodCard in  //to call all data saved in Cards
                    ZStack {
                        Rectangle()
                            .fill(Color("beigCard"))
                            .cornerRadius(13)
                            VStack() {
                                   Image(foodCard.Image)
                                    .resizable() // Make the image resizable
                                    .aspectRatio(contentMode: .fit) // Keep the aspect ratio and fit within the frame
                                     .frame(width: 150, height: 150) // Set the frame size for the image
                                     .padding(.top)
                                     Spacer()
                                   Text(foodCard.Label)
                                       .font(.system(size: 34))
                                       .padding(.bottom)
                            
                        } //end vstack
                       
                    }//end zstack
                    .frame(width: 200, height: 200)  //size of card
                    .padding([.leading, .trailing, .top])
                }//end foreach
                
            }//end hstack
        }//end scrollview
    }//end body
}
#Preview {
    FoodCardsView()
}
