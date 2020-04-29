package main

import (
	"flag"
	"fmt"
)

func main() {
	var greetee string
	flag.StringVar(&greetee, "greetee", "", "who to greet")
	flag.Parse()
	fmt.Printf("Hello %s\n", greetee)
}
