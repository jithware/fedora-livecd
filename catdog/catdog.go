package main

import (
	"fmt"
	"io/ioutil"
	"log"
	"os"
)

// Usage prints usage
func Usage() {
	log.Fatal("Usage: catdog <file>")
}

func main() {

	if len(os.Args) != 2 {
		Usage()
	}

	arg := os.Args[1]
	content, err := ioutil.ReadFile(arg)
	if err != nil {
		log.Fatal(err)
	}

	fmt.Printf("%s", content)
}
