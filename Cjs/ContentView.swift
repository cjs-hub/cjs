//
//  ContentView.swift
//  Cjs
//
//  Created by Ahmed Yussufu on 2022-04-11.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedOption: MenuBarOptions = .BreakfastCombos
    var body: some View {
        VStack {
            HStack(spacing: 16) {
                Button {
                    
                } label: {
                Image(systemName: "arrow.left").font(.title2)
                }
                
                Text("Big on breakfast").font(.title).fontWeight(.semibold)
                
                Spacer()
                
                Button {
                    
                } label: {
                Image(systemName: "magnifyingglass").font(.title2)
                }
            }
            .padding(.horizontal)
            .foregroundColor(.black)
            
            // menu options list
            MenuOptionsList(selectedOption:  $selectedOption).padding([.top, .horizontal])
                .overlay(
                    Divider()
                        .padding(.horizontal, -16),
                    alignment: .bottom
                )
            
            ScrollViewReader {
                proxy in ScrollView(.vertical, showsIndicators: false) {
                    VStack{
                        ForEach(MenuBarOptions.allCases, id: \.self) {
                            item in
                            MenuItemSection(option: item)
                        }
                    }
                    .onChange(of: selectedOption, perform: { _ in
                        withAnimation(.easeInOut) {
                            proxy.scrollTo(selectedOption, anchor: .topTrailing)
                        }
                        
                    })
                    .padding(.horizontal)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
