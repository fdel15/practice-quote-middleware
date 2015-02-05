class QuoteRandomizer

  def initialize(app)
    @app = app
  end

  def call(env)
    response = Quotes.new(@app).random
    ["200", {"Content-Type" => "text/plain"}, response]
  end
end