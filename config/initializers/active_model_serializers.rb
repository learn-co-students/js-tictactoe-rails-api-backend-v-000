ActiveModelSerializers.config.tap do |c|
  c.adapter = :json_api
  c.jsonapi_include_toplevel_object = true
  c.json_api_version = "1.0"
end 