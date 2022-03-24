//
//  MenuOptionsList.swift
//  SwiftUIUberEatsMenu
//
//  Created by James Armer on 15/02/2022.
//

import SwiftUI

struct MenuOptionsList: View {
    @Environment(\.colorScheme) var currentMode
    @Binding var selectedOption: MenuBarOptions
    @Binding var currentOption: MenuBarOptions
    @Namespace var animation
    
    var body: some View {
        ScrollViewReader { proxy in
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 30) {
                    ForEach(MenuBarOptions.allCases, id: \.self) { item in
                        VStack {
                            Text(item.title)
                                .padding(5.0)
                                .foregroundColor(item != currentOption ? .gray : currentMode == .dark ? .white : .black )
                                .hoverEffect(.highlight)
                                
                            
                            if currentOption == item {
                                Capsule()
                                    .fill(currentMode == .light ? .black : .white)
                                    .matchedGeometryEffect(id: "item", in: animation)
                                    .frame(height: 3)
                                    .padding(.horizontal, -10)
                            } else {
                                Capsule()
                                    .fill(.clear)
                                    .frame(height: 3)
                                    .padding(.horizontal, -10)
                            }
                        }
                        .onTapGesture {
                            withAnimation(.easeOut) {
                                self.selectedOption = item
                                proxy.scrollTo(item, anchor: .topTrailing)
                            }
                        }
                    }
                    .onChange(of: currentOption) { _ in
                        proxy.scrollTo(currentOption, anchor: .topTrailing)
                    }
                }
            }
        }
        
    }
}

//struct MenuOptionsList_Previews: PreviewProvider {
//    static var previews: some View {
//        MenuOptionsList(selectedOption: .constant(.italian))
//    }
//}
