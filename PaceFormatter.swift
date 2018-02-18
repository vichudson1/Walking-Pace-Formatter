//  PaceFormatter.swift
//  Created by Victor Hudson on 1/13/17.
//  Copyright © 2017 Victor Hudson. All rights reserved.

import Foundation

/// Type alias to give the formatter some context on its input.
public typealias WalkingPace = Double

/// For converting `WalkingPace` instances to a string
public struct PaceFormatter {
	
	/// Converts `WalkingPace` instances to a string.
	
	/// - Example: 2 miles walked over 43 minutes, 16 seconds would be calculated as 2596 seconds / 2 miles = 1298 walking pace, which would be formatted as `21'38"` for 21 minutes, 38 seconds per mile.
	/// - Parameter pace: The walking pace value.
	/// - Returns: string representing the walking pace.
	/// - precondition: Needs a `WalkingPace` value > 1 to work properly. Calculate pace in the form of `seconds/km` or `seconds/mi` to generate a high enough value for your `WalkingPace`.
	func string(from pace: WalkingPace) -> String {
		guard pace < 3600 else { return "--'--\"" }
		let units = timeUnits(for: pace)
		return "\(units.minutes)'\(units.seconds)\""
	}
	
	private func timeUnits(for pace: WalkingPace) -> (hours: Int, minutes: Int, seconds: Int) {
		let interval = Int(pace)
		return (interval / 3600, (interval % 3600) / 60, (interval % 3600) % 60)
	}
}

