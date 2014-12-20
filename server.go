package main

import (
  "fmt"
  "io/ioutil"
  "net/http"
)

func main() {
  http.HandleFunc("/", viewHandler)
  http.ListenAndServe(":8080", nil)
}

func viewHandler(w http.ResponseWriter, r *http.Request) {
  body, _ := ioutil.ReadFile(r.URL.Path[1:])
  fmt.Fprintf(w, "%s", body)
}
