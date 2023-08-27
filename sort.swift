// selection sort
func sortArray(_ nums: [Int]) -> [Int] {
    var res = [Int]()
    var arr = nums
    for _ in 0..<arr.count {
        let smallestNumIndex = findSmallestNumIndex(arr)
        res.append(arr[smallestNumIndex])
        arr.remove(at: smallestNumIndex)
    }
    return res
}

func findSmallestNumIndex(_ nums: [Int]) -> Int {
    var smallestNum = nums[0]
    var smallestNumIndex = 0
    for i in 1..<nums.count {
        if nums[i] < smallestNum {
            smallestNum = nums[i]
            smallestNumIndex = i
        }
    }
    return smallestNumIndex
}

// quick sort
func sortArray(_ nums: [Int]) -> [Int] {
    if nums.count < 2 {
        return nums
    } else {
        let pivot = nums[0]
        let left = nums[1...].filter { num in
            return num <= pivot
        }
        let right = nums[1...].filter { num in
            return num > pivot
        }
        return sortArray(left) + [pivot] + sortArray(right)
    }
}