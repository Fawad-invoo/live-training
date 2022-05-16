defmodule LiveTrainingWeb.HeroComponent do
    # If you generated an app with mix phx.new --live,
    # the line below would be: use MyAppWeb, :live_component
    use Phoenix.LiveComponent
  
    def render(assigns) do
      ~H"""
      <div class="hero"> Live Component Count is -> <%= @value %></div>
      """
    end
  end