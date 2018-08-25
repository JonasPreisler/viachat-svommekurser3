{
"messages": [
  {
    "attachment":{
      "type":"template",
      "payload":{
        "template_type":"generic",
        "image_aspect_ratio":"square",
        "elements":[
          {
            "title":"#{property.address}",
            "image_url":"https://thumb7.shutterstock.com/display_pic_with_logo/109564/436440067/stock-vector-human-resources-management-select-employee-recruitment-concept-of-human-resources-management-cv-436440067.jpg",
            "subtitle":"#{property.price}",
            "buttons":[
              {
                "type":"web_url",
                "url":"http://chatestate.herokuapp.com/properties/#{property.id}",
                "title":"Click here!"
              }
            ]
          }
        ]
      }
    }
  }
]
}