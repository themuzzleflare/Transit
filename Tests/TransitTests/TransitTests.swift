import XCTest
@testable import Transit

final class TransitTests: XCTestCase {
  var agencyFileURL: URL? = nil;

  override func setUp() {
    super.setUp()
    let resourcePath = Bundle.module.resourcePath
    let feedURL = URL(fileURLWithPath: resourcePath!)
    let feed = Feed(contentsOfURL: feedURL)
    if let agencyName = feed.agency?.name {
      print(agencyName)
    }
    if let routes = feed.routes {
      for route in routes {
        print(route)
      }
    }
    if let stops = feed.stops {
      for stop in stops {
        print(stop.name ?? "Wha?" )
      }
    }
  }

  func test_Wazzis() {
    XCTAssert(true)
  }
}
