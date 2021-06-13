defmodule UnitManagement do
  alias UnitManagement.States.Create, as: StateCreate
  alias UnitManagement.States.Get, as: StateGet

  defdelegate create_state(params), to: StateCreate, as: :call
  defdelegate get_state(id), to: StateGet, as: :get_by_id
end
