//
//  FoodDetailView.swift
//  SwiftUIUberEatsMenu
//
//  Created by James Armer on 17/02/2022.
//

import SwiftUI

struct FoodDetailView: View {
    let item: FoodItem
    
    var body: some View {
        ZStack {
            
            ScrollView(.vertical) {
                VStack {
                    Image(item.imageName)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .padding(.bottom)
                    
                    Text(item.title)
                        .font(.title)
                        .fontWeight(.semibold)
                        .padding()
                    
                    Text(item.description)
                        .padding()
                    
                    Spacer()
                }
                .navigationBarTitleDisplayMode(.inline)
            }
            
            VStack {
                Spacer()
            BasketToolbar()
            }
        }
    }
}

//struct FoodDetailView_Previews: PreviewProvider {
//    static var previews: some View {
//        FoodDetailView()
//    }
//}
