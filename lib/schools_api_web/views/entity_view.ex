defmodule SchoolsApiWeb.EntityView do
  use SchoolsApiWeb, :view
  alias SchoolsApiWeb.EntityView

  def render("index.json", %{entities: entities}) do
    %{data: render_many(entities, EntityView, "entity.json")}
  end

  def render("show.json", %{entity: entity}) do
    %{data: render_one(entity, EntityView, "entity.json")}
  end

  def render("entity.json", %{entity: entity}) do
    %{
      id: entity.id,
      name: entity.name,
      entity_type: entity.entity_type,
      inep: entity.inep,
      parent_id: entity.parent_id
    }
  end
end
