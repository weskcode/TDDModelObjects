//
//  TDDModelObjectsTests.swift
//  TDDModelObjectsTests
//
//  Created by Wesley Keetch on 1/17/25.
//

import XCTest
@testable import TDDModelObjects

class TestComputer: XCTestCase {

  func testFullDescription() {
    let computer = Computer(brand: "Apple", model: "MacBook Pro", releaseYear: 2023)
    XCTAssertEqual(computer.fullDescription, "Apple MacBook Pro (2023)")
  }

  func testValidReleaseYear() {
    let futureComputer = Computer(brand: "Apple", model: "MacBook", releaseYear: Calendar.current.component(.year, from: Date()) + 1)
    XCTAssertFalse(futureComputer.isValidReleaseYear())

    let validComputer = Computer(brand: "Dell", model: "XPS 15", releaseYear: 2018)
    XCTAssertTrue(validComputer.isValidReleaseYear())
  }

  func testCategory() {
    let budgetComputer = Computer(brand: "Acer", model: "Aspire", releaseYear: 2015)
    let highEndComputer = Computer(brand: "Apple", model: "Mac Studio", releaseYear: 2023)

    XCTAssertEqual(budgetComputer.category, "Budget")
    XCTAssertEqual(highEndComputer.category, "High-End")
  }

  func testStorageDescription() {
    let smallStorageComputer = Computer(brand: "Lenovo", model: "ThinkPad", releaseYear: 2018, storageInGB: 512)
    let largeStorageComputer = Computer(brand: "Apple", model: "iMac", releaseYear: 2021, storageInGB: 2048)

    XCTAssertEqual(smallStorageComputer.storageDescription(), "512GB")
    XCTAssertEqual(largeStorageComputer.storageDescription(), "2TB")
  }
}

final class TDDModelObjectsTests: XCTestCase {

  override func setUpWithError() throws {
    // Put setup code here. This method is called before the invocation of each test method in the class.
  }

  override func tearDownWithError() throws {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
  }
}
