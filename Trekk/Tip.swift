//
//  Tip.swift
//  Trekk
//
//  Created by Tom Riley on 20/06/2022.
//

import Foundation

struct Tip: Decodable {
    let text: String
    let children: [Tip]?
}
