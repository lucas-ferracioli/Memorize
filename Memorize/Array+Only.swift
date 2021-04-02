//
//  Array+Only.swift
//  Memorize
//
//  Created by Lucas Ferracioli on 02/04/21.
//

import Foundation

extension Array {
    var only: Element? {
        count == 1 ? first : nil
    }
}
