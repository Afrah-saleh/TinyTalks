//
//  ActivityCardsView.swift
//  TinyTalks
//
//  Created by Afrah Saleh on 05/06/1445 AH.
//

import SwiftUI

struct ActivityCardsView: View {
    @State private var activityCards: [ActivityCards] = ActivityCards.ActivityCard
    var body: some View {
        Text ("Activities")
            .fontWeight(.bold)
            .font(.system(size: 42))
            .frame(maxWidth: .infinity, alignment: .leading)
            //.padding(.all)
            .padding([.leading, .trailing, .top])
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: -20) {
                ForEach(ActivityCards.ActivityCard) { activityCards in  //to call all data saved in Cards
                    ZStack {
                        Rectangle()
                            .fill(Color("beigCard"))
                            .cornerRadius(13)
                            VStack() {
                                   Image(systemName: activityCards.Image)
                                       .foregroundColor(Color("DarkBlue"))
                                       .font(.system(size: 90))
                                       .padding(.top)
                                       .scaledToFit()
                                Spacer()
                                   Text(activityCards.Label)
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
    ActivityCardsView()
}
