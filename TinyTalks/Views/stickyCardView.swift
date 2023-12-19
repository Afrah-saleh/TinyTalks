//
//  stickyCardView.swift
//  TinyTalks
//
//  Created by Samaa on 19/12/2023.
//

import SwiftUI

struct stickyCardView: View {
    var body: some View {
        // MARK: - NavigationStack START
        ZStack{
            Color("Back")
                .ignoresSafeArea(.all)
            VStack{
                NavigationStack {
                    ZStack{
                        Color("Back")
                            .ignoresSafeArea(.all)
                        Rectangle()
                            .frame(width: 760,height:400)
                            .foregroundColor(.darkBlue)
                            .cornerRadius(13)
                        HStack{
                            Rectangle()
                                .frame(width: 150,height:250)
                                .foregroundColor(.beigCard)
                                .cornerRadius(13)
                            Rectangle()
                                .frame(width: 150,height:250)
                                .foregroundColor(.beigCard)
                                .cornerRadius(13)
                            Rectangle()
                                .frame(width: 150,height:250)
                                .foregroundColor(.beigCard)
                                .cornerRadius(13)
                            Rectangle()
                                .frame(width: 150,height:250)
                                .foregroundColor(.beigCard)
                                .cornerRadius(13)
                        }.padding(.horizontal, 28)
                        
                        // MARK: - the sound Button START
                        Button{
                            print("sound played")
                        }
                    label:{
                        ZStack{
                            Circle()
                                .frame(width: 80,height:80)
                                .foregroundColor(.lavander)
                            Image(systemName: "speaker.wave.2.fill")
                                .resizable()
                                .frame(width: 44,height:44)
                                .foregroundColor(.beigCard)
                        }.offset(y:200)
                    }.accessibilityHint("Play the sound of the sentence")
                    }//End of zstack for the top cards
                    // MARK: - the sound Button END
                    
                    .toolbar {
                        ToolbarItem(placement: .navigationBarTrailing) {
                            Button{
                                print("How to use the app tapped!")
                            } label: {
                                Image(systemName:"questionmark.circle")
                                    .foregroundColor(.lavander)
                                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                            }.accessibilityHint("Button for description how to use the app")
                        }
                    }
                }
                // MARK: - NavigationStack END
                // MARK: - The code of the rest card gose here!
                // MARK: - Tis code is just for testing
                ScrollView(.vertical, showsIndicators: false) {
                    CardsView()
                    ActivityCardsView()
                    FoodCardsView()
                }
                // MARK: - the code above code is just for testing
            }
        }
    }
}
#Preview {
    stickyCardView()
}
