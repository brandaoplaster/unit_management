defmodule UnitManagement do
  alias UnitManagement.States.Create, as: StateCreate
  alias UnitManagement.States.Get, as: StateGet
  alias UnitManagement.States.Update, as: StateUpdate
  alias UnitManagement.States.Get, as: StateGetAll
  alias UnitManagement.States.Delete, as: StateDelete

  alias UnitManagement.Counties.Create, as: CountyCreate
  alias UnitManagement.Counties.Get, as: CountyGet
  alias UnitManagement.Counties.Get, as: CountyGetAll
  alias UnitManagement.Counties.Delete, as: CountyDelete

  defdelegate create_state(params), to: StateCreate, as: :call
  defdelegate get_state(id), to: StateGet, as: :get_by_id
  defdelegate update_state(params), to: StateUpdate, as: :call
  defdelegate get_all_state(), to: StateGetAll, as: :get_all
  defdelegate delete_state(id), to: StateDelete, as: :call

  defdelegate create_county(params), to: CountyCreate, as: :call
  defdelegate get_all_counties, to: CountyGetAll, as: :get_all
  defdelegate get_county(id), to: CountyGet, as: :get_by_id
  defdelegate delete_county(id), to: CountyDelete, as: :call
end
