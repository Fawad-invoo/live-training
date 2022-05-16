defmodule LiveTrainingWeb.CounterLive do
    #use Phoenix.LiveView
    use LiveTrainingWeb, :live_view
    alias LiveTrainingWeb.MyComponent
    alias LiveTrainingWeb.HeroComponent

    def mount(_params,_session,socket) do
      {:ok, assign(socket, :val, 0)}
    end
  
    def render(assigns) do
        ~H"""
        <div>
          <h1> The count is: <%= @val %></h1>
          <button phx-click="dec">-</button>
          <button phx-click="inc">+</button>
        </div>
        <MyComponent.greet name="Jane" count= {@val} />
        <.live_component module={HeroComponent} id="hero" value={@val} />
        """
    end

    def handle_event("inc", _, socket) do
        {:noreply, update(socket, :val, &(&1 + 1))}
    end
      
    def handle_event("dec", _, socket) do
    {:noreply, update(socket, :val, &(&1 - 1))}
    end
  end