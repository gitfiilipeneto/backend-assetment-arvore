defmodule SchoolsApi.PartnersFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `SchoolsApi.Partners` context.
  """

  @doc """
  Generate a entity.
  """
  def entity_fixture(attrs \\ %{}) do
    {:ok, entity} =
      attrs
      |> Enum.into(%{
        entity_type: "some entity_type",
        inep: "some inep",
        name: "some name",
        parent_id: 42
      })
      |> SchoolsApi.Partners.create_entity()

    entity
  end

  @doc """
  Generate a entity.
  """
#   def entity_fixture(attrs \\ %{}) do
#     {:ok, entity} =
#       attrs
#       |> Enum.into(%{
#         entity_type: "some entity_type",
#         inep: "some inep",
#         name: "some name",
#         parent_id: 42,
#       })
#       |> SchoolsApi.Partners.create_entity()

#     entity
#   end
end
