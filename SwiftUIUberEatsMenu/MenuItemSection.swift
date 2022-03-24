//
//  MenuItemSection.swift
//  SwiftUIUberEatsMenu
//
//  Created by James Armer on 15/02/2022.
//

import SwiftUI

struct MenuItemSection: View {
    let option: MenuBarOptions
    @Binding var currentOption: MenuBarOptions
    
    var body: some View {
   
        VStack(alignment: .leading, spacing: 24) {
            Text(option.title)
                .font(.title.bold())
                .padding(.vertical)
            
            ForEach(option.foodItems) { foodItem in
                NavigationLink {
                    FoodDetailView(item: foodItem)
                } label: {
                    
                    HStack(spacing: 16) {
                        VStack(alignment: .leading, spacing: 8) {
                            Text(foodItem.title)
                                .font(.title3.bold())
//                                .foregroundColor(.black)
                            
                            Text(foodItem.description)
                                .multilineTextAlignment(.leading)
                                .font(.caption)
                                
                            
                            Text("Price: \(foodItem.price)")
                                .font(.system(size: 14))
                                .fontWeight(.bold)
//                                .foregroundColor(.black)
                        }
                        
                        Spacer()
                        
                        Image(foodItem.imageName)
                            .resizable()
                            .scaledToFill()
                            .frame(width: 96, height: 88)
                            .clipped()
                            .cornerRadius(10)
                    }
                }
                .buttonStyle(PlainButtonStyle())
                
                
                Divider()
            }
        }
        .modifier(OffsetModifier(option: option, currentOption: $currentOption))
    }
}

//struct MenuItemSection_Previews: PreviewProvider {
//    static var previews: some View {
//        MenuItemSection(option: .american)
//    }
//}
