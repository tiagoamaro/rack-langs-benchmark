require "http/server"

server = HTTP::Server.new(3000) do |request|
  HTTP::Response.ok "text/plain", "Hello world!"
end

puts "Listening on http://0.0.0.0:3000"
server.listen
