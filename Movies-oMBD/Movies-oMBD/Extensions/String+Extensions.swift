//
//  String+Extensions.swift
//  Movies-oMBD
//
//  Created by sergio joel camacho zarco on 16/08/23.
//

import Foundation

extension String{
    // to handle spaces correctly
    func trimmedAndScaped() -> String{
        let trimmed = self.trimmingCharacters(in: .whitespacesAndNewlines)
        return trimmed.addingPercentEncoding(withAllowedCharacters: .urlHostAllowed) ?? self
    }
}
