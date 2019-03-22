package main
import (
	"fmt"
	"strconv"
)

func Sum(x int, y int) int {
    return x + y
}

func main() {
	fmt.Println("The sum of 5 + 5 is " + strconv.Itoa(Sum(5, 5)))
}