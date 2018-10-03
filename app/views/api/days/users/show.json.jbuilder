json.messages do
  json.array! [*1] do
    json.attachment do
      json.type "template"
      json.payload do
        json.template_type "generic"
        json.image_aspect_ratio "horizontal"
        json.elements do
          json.title "#{@day_one.program.name}"
        end
      end
    end
  end
end