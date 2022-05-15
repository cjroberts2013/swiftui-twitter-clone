//
//  SideMenuOptionRowView.swift
//  swiftui-twitter-clone
//
//  Created by Charles Roberts on 5/14/22.
//

import SwiftUI

struct SideMenuOptionRowView: View {
    
    let viewModel: SideMenuViewModel
    
    var body: some View {
        HStack (spacing: 16) {
            Image(systemName: viewModel.icon)
                .font(.headline)
                .foregroundColor(.gray)
            
            Text(viewModel.description)
                .font(.subheadline)
            
            Spacer()
        }
        .frame(height: 40)
        .padding(.horizontal)
    }
}

struct SideMenuOptionRowView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuOptionRowView(viewModel: .profile)
    }
}
