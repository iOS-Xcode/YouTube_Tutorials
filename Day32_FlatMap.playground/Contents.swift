
var myArray = [["one", "two", "three"], ["2", "1", "3"], ["three"], ["4", "Array"], ["Flat"]]
let flatMapped = myArray.flatMap { (item: [String]) in
    return item
}

print(flatMapped)

