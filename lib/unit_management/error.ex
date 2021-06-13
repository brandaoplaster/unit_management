defmodule UnitManagement.Error do
  alias Ecto.Changeset

  @keys [:status, :message]

  @enforce_keys @keys

  defstruct @keys

  def build(status, message) do
    %__MODULE__{
      status: status,
      message: message
    }
  end

  def build_state_not_found_error, do: build(:not_found, "State not found")
end
