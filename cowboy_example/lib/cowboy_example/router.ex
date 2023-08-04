defmodule CowboyExample.Router do
  @moduledoc """
  This module defines all the routes, params and handlers.

  This module is also the handler module for the root
    route.
  """
  require Logger

  alias CowboyExample.Router.Handlers.{Greet, Root, Static}

  @doc """
  Returns the list of routes configured by this web server
  """
  def routes do
    [
      # For now, this module itself will handle root
      # requests
      {:_,
       [
         {"/", Root, []},
         {"/greet/:who", [who: :nonempty], Greet, []},
         {"/static/:page", [page: :nonempty], Static, []}
       ]}
    ]
  end
end
