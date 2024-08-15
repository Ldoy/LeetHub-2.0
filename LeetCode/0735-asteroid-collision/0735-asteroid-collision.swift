class Solution {
func asteroidCollision(_ asteroids: [Int]) -> [Int] {
        var stack: [Int] = []

        for asteroid in asteroids {
        if asteroid > 0 {
            stack.append(asteroid)
            } else {
            while let lastAsteroid = stack.last, lastAsteroid > 0, lastAsteroid < abs(asteroid) {
                stack.removeLast()
            }

            if let lastAsteroid = stack.last, lastAsteroid == abs(asteroid) {
                stack.removeLast()
            } else if stack.isEmpty || stack.last! < 0 {
                stack.append(asteroid)
            }
        }
    }

    return stack
    }

}