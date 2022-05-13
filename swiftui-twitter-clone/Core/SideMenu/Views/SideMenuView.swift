//
//  SideMenuView.swift
//  swiftui-twitter-clone
//
//  Created by Charles Roberts on 5/12/22.
//

import SwiftUI

struct SideMenuView: View {
    var body: some View {
        VStack (alignment: .leading, spacing: 32) {
            VStack (alignment: .leading) {
                Circle()
                    .frame(width: 48, height: 48)
                
                VStack (alignment: .leading, spacing: 4) {
                    Text("Bruce Wayne")
                        .font(.headline)
                
                    Text("@batman")
                        .font(.caption)
                        .foregroundColor(.gray)
                    
                }
                
                UserStatsView()
                    .padding(.vertical)
            }
            .padding(.leading)
            
            ForEach(SideMenuViewModel.allCases, id: \.self) { option in
                HStack (spacing: 16) {
                    Image(systemName: option.icon)
                        .font(.headline)
                        .foregroundColor(.gray)
                    
                    Text(option.description)
                        .font(.subheadline)
                    
                    Spacer()
                }
                .frame(height: 40)
                .padding(.horizontal)
            }
            Spacer()
        }
    }
}

struct SideMenuView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuView()
    }
}