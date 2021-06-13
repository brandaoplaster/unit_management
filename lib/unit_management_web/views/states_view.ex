defmodule UnitManagementWeb.StatesView do
  use UnitManagementWeb, :view

  alias UnitManagement.State

  def render("index.json", %{states: states}) do
    %{states: Enum.map(states, &state_json/1)}
  end

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

  defp state_json(state) do
    %{
      state: %{
        id: state.id,
        name: state.name,
        initials: state.initials
      }
    }
  end
end
