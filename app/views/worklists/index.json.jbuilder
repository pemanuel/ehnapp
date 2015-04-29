json.array!(@worklists) do |worklist|
  json.extract! worklist, :id, :name, :nextworklist, :status
  json.url worklist_url(worklist, format: :json)
end
