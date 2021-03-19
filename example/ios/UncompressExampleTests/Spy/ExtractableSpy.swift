//
//  ExtractableSpy.swift
//  UncompressExampleTests
//
//  Created by Adriano Souza Costa on 19/03/21.
//

import Foundation
import uncompress

final class ExtractableSpy: Extractable {
  
  var compatibilities: [Compatibility] = []
  var filePath: URL?
  var destination: URL?
  var overwrite = true
  var password: String?
  var progressHandler: ((Double) -> Void)?
  var error: Error?
  
  func extract(
    _ filePath: URL,
    to destination: URL,
    overwrite: Bool,
    password: String?,
    progressHandler: ((Double) -> Void)?
  ) throws {
    if let error = error {
      throw error
    }
    
    self.filePath = filePath
    self.destination = destination
    self.overwrite = overwrite
    self.password = password
    self.progressHandler = progressHandler
  }
  
}