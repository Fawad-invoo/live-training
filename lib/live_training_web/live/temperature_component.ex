defmodule LiveTrainingWeb.MyComponent do
    use Phoenix.Component
  
    # Optionally also bring the HTML helpers
    # use Phoenix.HTML
  
    def greet(assigns) do
      ~H"""
      <p>Phoenix Component! Hello, <%= assigns.name %> Counter value is <%= assigns.count %></p>
      """
    end
  end