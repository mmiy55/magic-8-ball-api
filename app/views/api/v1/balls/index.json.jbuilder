json.array! @balls do |ball|
  json.extract! ball, :id, :name, :user
end
