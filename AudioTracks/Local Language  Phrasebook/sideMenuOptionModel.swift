//
//  sideMenuOptionModel.swift
//  Local Language  Phrasebook
//
//  Created by Prevail Mukunga on 27/10/2025.
//

import Foundation

enum SideMenuOptionModel: Int, CaseIterable {
    case favourites
    case History
    case Settings
    case quizzes
    
    var title: String {
        switch self{
        case .History:
            return "History"
        case .Settings:
            return "Settings"
        case .favourites:
            return "Favourites"
        case .quizzes:
            return "Quizzes"
        }
    }
    
    var systemImageName: String {
        switch self{
        case .History:
            return "clock"
        case .Settings:
            return "gearshape"
        case .favourites:
            return "star"
        case .quizzes:
            return "questionmark.circle"
        }
    }
    
}

extension SideMenuOptionModel: Identifiable{
    var id: Int{return self.rawValue}
}
