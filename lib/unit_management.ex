defmodule UnitManagement do
  alias UnitManagement.States.Create, as: StateCreate

  defdelegate create_state(params), to: StateCreate, as: :call
end
