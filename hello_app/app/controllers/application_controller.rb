class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def hello
    render html: "hello, world!"
  end

  def bye
    render html: "Goodbye!"
  end

  def ascii
    render html: "¡Hola, mundo!"
  end
end
