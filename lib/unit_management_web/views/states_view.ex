defmodule UnitManagementWeb.StatesView do
  use UnitManagementWeb, :view

  alias UnitManagement.State

  def render("create.json", %{
        state: %State{
          id: id,
          name: name,
          initials: initials
        }
      }) do
    %{
      state: %{
        id: id,
        name: name,
        initials: initials
      }
    }
  end

  def render("state.json", %{
        state: %State{
          id: id,
          name: name,
          initials: initials
        }
      }) do
    %{
      state: %{
        id: id,
        name: name,
        initials: initials
      }
    }
  end
end
