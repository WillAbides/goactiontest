package main

import (
	"flag"
	"fmt"

	"github.com/posener/goaction"
)

func main() {
	var greetee string
	flag.StringVar(&greetee, "greetee", "", "who to greet")
	flag.Parse()
	fmt.Printf("Hello %s\n", greetee)
	if goaction.CI {
		fmt.Println("Don't run this local")
	}
}
