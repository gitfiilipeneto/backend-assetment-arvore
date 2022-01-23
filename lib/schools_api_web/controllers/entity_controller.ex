defmodule SchoolsApiWeb.EntityController do
  use SchoolsApiWeb, :controller

  alias SchoolsApi.Partners
  alias SchoolsApi.Partners.Entity

  action_fallback SchoolsApiWeb.FallbackController

  def index(conn, _params) do
    entities = Partners.list_entities()
    render(conn, "index.json", entities: entities)
  end

  def create(conn, %{"entity" => entity_params}) do
    with {:ok, %Entity{} = entity} <- Partners.create_entity(entity_params) do
      
      conn
      |> put_status(:created)
      |> put_resp_header("location", Routes.entity_path(conn, :show, entity))
      |> render("show.json", entity: entity)
    end
  end

  def show(conn, %{"id" => id}) do
    entity = Partners.get_entity!(id)
    render(conn, "show.json", entity: entity)
  end

  def update(conn, %{"id" => id, "entity" => entity_params}) do
    entity = Partners.get_entity!(id)

    with {:ok, %Entity{} = entity} <- Partners.update_entity(entity, entity_params) do
      render(conn, "show.json", entity: entity)
    end
  end

  def delete(conn, %{"id" => id}) do
    entity = Partners.get_entity!(id)

    with {:ok, %Entity{}} <- Partners.delete_entity(entity) do
      send_resp(conn, :no_content, "")
    end
  end


  # def fetch(_topic, presences) do
  #   query =
  #     from u in User,
  #       where: u.id in ^Map.keys(presences),
  #       select: {u.id, u}
  
  #   users = query |> Repo.all() |> Enum.into(%{})
  #   for {key, %{metas: metas}} <- presences, into: %{} do
  #     {key, %{metas: metas, user: users[key]}}
  #   end
  # end
  
end
