package main

import (
	"github.com/martini-contrib/render"

	"github.com/go-martini/martini"
)

type Cupcake struct {
	Name       string
	ImageClass string
}

func main() {
	m := martini.Classic()

	m.Use(render.Renderer(render.Options{
		Directory:  "templates",
		Layout:     "layout",
		Extensions: []string{".html"},
		Charset:    "UTF-8",
	}))

	m.Get("/", func(r render.Render) {
		bestsellingCupcakes := []Cupcake{
			Cupcake{"Cherry Cupcake", "cherrycup"},
			Cupcake{"Cream Cupcake", "creamcup"},
			Cupcake{"Green Cupcake", "greencup"},
		}
		r.HTML(200, "index", map[string]interface{}{"bestsellingCupcakes": bestsellingCupcakes})
	})

	m.Get("/cupcakes", func(r render.Render) {
		cupcakes := []Cupcake{
			Cupcake{"Cherry Cupcake", "cherrycup"},
			Cupcake{"Cream Cupcake", "creamcup"},
			Cupcake{"Green Cupcake", "greencup"},
			Cupcake{"Mint Cupcake", "mintcup"},
			Cupcake{"Small Cupcake", "smallcup"},
		}

		instanceVariables := map[string]interface{}{"cupcakes": cupcakes}

		r.HTML(200, "cupcakes", instanceVariables)
	})

	m.Run()
}
