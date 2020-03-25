ActiveModelSerializers.config.tap do |c|
  c.adapter = :json_api
  c.jsonapi_include_toplevel_object = true
  c.jsonapi_version = "1.0"
end
#tells :json_api serialization adpter to include a top-level jsonapi_include_toplevel_object
#and andgere to v1.0 JSON:API specification
