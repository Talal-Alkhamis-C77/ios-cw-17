//
//  Struct file.swift
//  corona
//
//  Created by Talal Alkhamis on 19/03/2022.
//

import Foundation

struct userCovidInfo: Identifiable {
    var id = UUID()
    let fullname: String
    var area: String
    var numberOfDoses: Int
}
