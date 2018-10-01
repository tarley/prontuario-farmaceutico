json.professions do
  json.array!(@professions) do |profession|
    json.description profession.description
    json.url profession_path(profession)
  end
end

json.ubs do
  json.array!(@ubs) do |ub|
    json.description ub.description
    json.url ub_path(ub)
  end
end
