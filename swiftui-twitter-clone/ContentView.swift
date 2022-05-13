//
//  ContentView.swift
//  swiftui-twitter-clone
//
//  Created by Charles Roberts on 5/8/22.
//

import SwiftUI

struct ContentView: View {
    @State private var showMenu = false
    
    var body: some View {
        ZStack (alignment: .topLeading) {
            MainTabView()
        }
        .navigationTitle("Home")
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                Button {
                    showMenu.toggle()
                } label: {
                    Circle()
                        .frame(width: 32, height: 32)
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
