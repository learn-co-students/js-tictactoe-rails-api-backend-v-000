ActiveModelSerializers.config.tap do |c|
  c.adapter = :json_api
  c.jsonapi_include_toplevel_object = true
  c.jsonapi_version = "1.0"
end

#This tells AMS to use the :json_api serialization adapter, to include a top-level object, and to adhere to version 1.0
#version 1.0 of JSON:API specification is adhered to.
