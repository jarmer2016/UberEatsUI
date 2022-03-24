//
//  BasketToolbar.swift
//  SwiftUIUberEatsMenu
//
//  Created by James Armer on 16/02/2022.
//

import SwiftUI

struct BasketToolbar: View {
    @Environment(\.colorScheme) var currentMode
    @State var quantityToAdd: Int = 1
    
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(.black)
                .cornerRadius(10)
                .padding()
                .frame(height: 100)
                .shadow(color: currentMode == .dark ? .gray : .black, radius: 15)
                
            
            HStack {
                
                HStack {
                    
                    Button {
                        if quantityToAdd > 1 {
                        quantityToAdd -= 1
                        }
                    } label: {
                        ZStack{
                            Circle()
                                .frame(width: 50, height: 50)
                                .foregroundColor(.black)
                                
                            
                            Text("-")
                                .font(.title)
                                .foregroundColor(.white)
                        }
                    }
                    
                    ZStack {
                        Rectangle()
                            .foregroundColor(.white)
                            .frame(width: 50, height: 50)
                        Text("\(quantityToAdd)")
                            .font(.title2)
                            .foregroundColor(.black)
                        
                    }
                    
                    Button {
                        quantityToAdd += 1
                    } label: {
                        
                        ZStack{
                            Circle()
                                .frame(width: 50, height: 50)
                                .foregroundColor(.black)
                            
                            Text("+")
                                .font(.title)
                                .foregroundColor(.white)
                        }
                    }
                }
                .padding(.trailing, 20)
                
                Button {
                    print("Added to basket")
                } label: {
                    
                    
                    
                    ZStack {
                        Capsule()
                            .foregroundColor(.green)
                            .frame(width: 150, height: 50)
                        
                        Text("Add to Basket")
                            .fontWeight(.semibold)
                    }
                }
                .buttonStyle(.plain)
            }
            .padding()
            
        }
        
    }
}

struct BasketToolbar_Previews: PreviewProvider {
    static var previews: some View {
        BasketToolbar()
    }
}
