json.extract! @ball, :id, :name, :comment
json.answers @ball.answers do |answer|
  json.extract! answer, :id, :content, :answer_type
end
