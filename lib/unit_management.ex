defmodule UnitManagement do
  alias UnitManagement.States.Create, as: StateCreate
  alias UnitManagement.States.Get, as: StateGet
  alias UnitManagement.States.Update, as: StateUpdate
  alias UnitManagement.States.Get, as: StateGetAll
  alias UnitManagement.States.Delete, as: StateDelete

  defdelegate create_state(params), to: StateCreate, as: :call
  defdelegate get_state(id), to: StateGet, as: :get_by_id
  defdelegate update_state(params), to: StateUpdate, as: :call
  defdelegate get_all_state(), to: StateGetAll, as: :get_all
  defdelegate delete_state(id), to: StateDelete, as: :call
end
