using  Genie, Genie.Renderer.Json , Genie.Renderer, Genie.Renderer.Html

to_html(x) = "<h1>$x</h1> <hr style =\"border: none;background-color: blue;height: 20px;\">"
greet(x) = "hello $x"

route("/hello") do
    name = params(:name,"default")
    resp = greet(name)
    resp_html = to_html(resp)
    html(resp_html)
end 
Genie.up(80, "0.0.0.0", async = false)