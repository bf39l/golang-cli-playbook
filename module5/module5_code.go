package module5

import (
	"net/http"
	"fmt"
)

// GetExampleDotCom uses the "net/http" package to send a GET request to example.com
func GetExampleDotCom() {
	resp, err := http.Get("http://example.com/")
	if err != nil {
		fmt.Println("something went wrong")
	}

	defer resp.Body.Close()
}
