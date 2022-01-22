# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     SchoolsApi.Repo.insert!(%SchoolsApi.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

SchoolsApi.Repo.insert!(%SchoolsApi.Partners.Entity{

    name: "Escola Exemplo",
    entity_type: "school",
    inep: "1123456",
    parent_id: nil  

    
})


SchoolsApi.Repo.insert!(%SchoolsApi.Partners.Entity{
    name: "Escola Exemplo",
    entity_type: "school",
    inep: "1223456",
    parent_id: nil
  
})



SchoolsApi.Repo.insert!(%SchoolsApi.Partners.Entity{
    name: "Escola Exemplo",
    entity_type: "school",
    inep: "1233456",
    parent_id: nil
  
})


