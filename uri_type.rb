require 'uri'

class URIType < ActiveRecord::Type::Value
  def deserialize(value)
    value = '' unless value.is_a? String
    super(URI(value))
  end

  def serialize(value)
    value.to_s
  end
end
