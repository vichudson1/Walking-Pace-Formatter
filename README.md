# Walking-Pace-Formatter
Converts `WalkingPace` in the form of a `Double` to a string displaying Minutes &amp; Seconds per mile/km.

#### Example: 
2 miles walked over 43 minutes, 16 seconds would be calculated as 2596 seconds / 2 miles = 1298 walking pace, which would be formatted as `21'38"` for 21 minutes, 38 seconds per mile.

``` swift
let distance = 2.0 // 2 miles or km
let time = 2596.0 // seconds

// WalkingPace is a typeAlias for Double
let pace: WalkingPace = time / distance 

let formatter = PaceFormatter()
let paceString = formatter.string(from: pace) // 21'38"
```


#### Installation
Simply add the [PaceFormatter](https://github.com/vichudson1/Walking-Pace-Formatter/blob/master/PaceFormatter.swift) struct to your project.

## License
PaceFormatter is free to use under the MIT License.