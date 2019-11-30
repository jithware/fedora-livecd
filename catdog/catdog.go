package main

import (
	"flag"
	"fmt"
	"io/ioutil"
	"log"
	"os"
)

// Usage prints usage
func Usage() {
	fmt.Println("Usage: " + os.Args[0] + " [OPTION]... [FILE]...")
	os.Exit(0)
}

func main() {

	if len(os.Args) == 1 {
		Usage()
	}

	help := flag.Bool("help", false, "display this help and exit")
	flag.Parse()
	if *help {
		Usage()
	}

	args := os.Args[1:]
	for _, arg := range args {
		content, err := ioutil.ReadFile(arg)
		if err != nil {
			log.Fatal(err)
		} else {
			fmt.Printf("%s", content)
		}
	}
}
