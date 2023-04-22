//
//  File.swift
//  RickAndMorty
//
//  Created by Kamila on 14/4/23.
//

import Foundation

enum SettingsSections: Int, CaseIterable, CustomStringConvertible {
    case PersonInfo
    case Appearance
    
    var description: String {
        switch self {
        case .PersonInfo: return "Personal Info"
        case .Appearance: return "Appearance"
        }
    }
}

enum Appearance: Int, CaseIterable, CustomStringConvertible {
    case editTheme

    var description: String {
        switch self {
        case .editTheme: return "Edit Current Theme"
        }
    }
}
