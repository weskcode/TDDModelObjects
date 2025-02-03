//
//  Computer.swift
//  TDDModelObjects
//
//  Created by Wesley Keetch on 1/17/25.
//

import SwiftUI

class Computer {
  let brand: String
  let model: String
  let releaseYear: Int
  let storageInGB: Int
  
  var fullDescription: String {
    return "\(brand) \(model) (\(releaseYear))"
  }
  
  var computerAge: Int {
    return Calendar.current.component(.year, from: Date()) - releaseYear
  }
  
  func isValidReleaseYear() -> Bool {
    let currentYear = Calendar.current.component(.year, from: Date())
    return releaseYear <= currentYear
  }
  
  var category: String {
    return computerAge > 5 ? "Budget" : "High-End"
  }
  
  func storageDescription() -> String {
    return storageInGB >= 1024 ? "\(storageInGB / 1024)TB" : "\(storageInGB)GB"
  }
  
  init(brand: String, model: String, releaseYear: Int, storageInGB: Int = 256) {
    self.brand = brand
    self.model = model
    self.releaseYear = releaseYear
    self.storageInGB = storageInGB
  }
}
