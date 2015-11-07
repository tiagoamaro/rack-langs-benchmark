class MyApp
  attr_reader :request

  def initialize(request)
    @request = request
  end

  def status
    if homepage?
      200
    else
      404
    end
  end

  def headers
    {'Content-Type' => 'text/html', 'Content-Length' => body.size.to_s}
  end

  def body
    'Hello world!'
  end

  private

  def homepage?
    request.path_info == '/'
  end
end

class MyApp::Rack
  def call(env)
    request = Rack::Request.new(env)
    my_app = MyApp.new(request)

    [my_app.status, my_app.headers, [my_app.body]]
  end
end

run MyApp::Rack.new
