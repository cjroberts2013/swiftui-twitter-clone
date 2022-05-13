//
//  SideMenuViewModel.swift
//  swiftui-twitter-clone
//
//  Created by Charles Roberts on 5/12/22.
//

import Foundation

enum SideMenuViewModel: Int, CaseIterable {
    case profile
    case lists
    case bookmarks
    case logout
    
    var description: String {
        switch self {
        case .profile: return "Profile"
        case .lists: return "Lists"
        case .bookmarks: return "Bookmarks"
        case .logout: return "Logout"
        }
    }
    
    var icon: String {
        switch self {
        case .profile: return "person"
        case .lists: return "list.bullet"
        case .bookmarks: return "bookmark"
        case .logout: return "arrow.left.square"
        }
    }
    
}
