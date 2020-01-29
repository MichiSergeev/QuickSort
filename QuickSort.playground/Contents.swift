// quick sort in-place

var myArray=[8,2,5,9,4,7,3,1,6,0]
print(myArray)

func partition(array: inout [Int], p:Int, r:Int)->Int {
    var q:Int=p
    for u in p...r-1 {
        if array[u]<=array[r] {
            array.swapAt(q, u)
            q+=1
        }
    }
    array.swapAt(r, q)
    return q
}

func quickSort(array: inout [Int], p:Int, r:Int) {
    guard p<r else {
        return
    }
    let q=partition(array: &array, p: p, r: r)
    quickSort(array: &array, p: p, r: q-1)
    quickSort(array: &array, p: q+1, r: r)
}

quickSort(array: &myArray, p: 0, r: myArray.count-1)
print(myArray)
