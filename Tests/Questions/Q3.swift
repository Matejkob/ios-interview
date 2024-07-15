import XCTest

final class Q3: XCTestCase {

    func test() {
        XCTAssertEqual(maxArea([1, 8, 6, 2, 5, 4, 8, 3, 7]), 49)

        XCTAssertEqual(maxArea([1, 1]), 1)

        XCTAssertEqual(maxArea([1, 3, 8, 6, 2, 4, 5, 1, 8, 4]), 48)
    }

    /*
     You are given an integer array height of length n. There are n vertical lines drawn such that the two endpoints of 
     the ith line are (i, 0) and (i, height[i]).

     Find two lines that together with the x-axis form a container, such that the container contains the most water.

     Return the maximum amount of water a container can store.

     Notice that you may not slant the container.

     Example 1:

     Input: height = [1, 3, 8, 6, 2, 4, 5, 1, 8, 4]
     Output: 48
     Explanation: The below vertical lines are represented by array [1, 3, 8, 6, 2, 4, 5, 1, 8, 4]. In this case, the 
     max area of water the container can contain is 48.

     8 │     ┃           ┃
     7 │     ┃           ┃
     6 │     ┃ ┃         ┃
     5 │     ┃ ┃     ┃   ┃
     4 │     ┃ ┃   ┃ ┃   ┃ ┃
     3 │   ┃ ┃ ┃   ┃ ┃   ┃ ┃
     2 │   ┃ ┃ ┃ ┃ ┃ ┃   ┃ ┃
     1 │ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃
     0 ┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─
         0 1 2 3 4 5 6 7 8 9
             ^           ^

     Example 2:

     Input: height = [1,1]
     Output: 1

     Constraints:
     
     n == height.length
     2 <= n <= 105
     0 <= height[i] <= 104
     */
    func maxArea(_ height: [Int]) -> Int {

        fatalError()
    }
}

