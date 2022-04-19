//
//  MenuOptionsList.swift
//  Cjs
//
//  Created by Ahmed Yussufu on 2022-04-11.
//

import SwiftUI

struct MenuOptionsList: View {
    @Binding var selectedOption: MenuBarOptions
    @Namespace var animation
    var body: some View {
        ScrollViewReader{
            proxy in
            ScrollView(.horizontal, showsIndicators: false){
                HStack(spacing: 30) {
                        ForEach(MenuBarOptions.allCases, id: \.self) {
                            item in
                            VStack {
                                 Text(item.title)
                                    .foregroundColor(item == selectedOption ? .black : .gray)
                                
                                if selectedOption == item {
                                    Capsule()
                                        .fill(.black)
                                        .matchedGeometryEffect(id: "item", in: animation)
                                        .frame(height: 3)
                                        .padding(.horizontal, -10)
                                }else {
                                    Capsule()
                                        .fill(.clear)
                                        .frame(height: 3)
                                        .padding(.horizontal, -10)
                                    
                                }
                            }
                            .onTapGesture{
                                withAnimation(.easeInOut){
                                    self.selectedOption = item
                                    proxy.scrollTo(item, anchor: .topTrailing)
                                }
                            }
                                
                        }
                    
                }
            }
        }
    }
}

struct MenuOptionsList_Previews: PreviewProvider {
    static var previews: some View {
        MenuOptionsList(selectedOption: .constant(.BreakfastCombos))
    }
}
