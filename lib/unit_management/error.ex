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
end
