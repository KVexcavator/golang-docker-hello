package main

import (
	"fmt"
	"os"
)

func main() {
	flowEnvExample := os.Getenv("ENV_EXAMPLE")

	fmt.Println("Hello from Docker")
	fmt.Printf("Environment: %s\n", flowEnvExample)
}
