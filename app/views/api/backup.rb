      render json: {
       "messages": [
          {
            "attachment":{
              "type":"template",
              "payload":{
                "template_type":"generic",
                "image_aspect_ratio":"square",
                "elements":[
                  {
                    "title":"#{@property.first.address}",
                    "image_url":"https://thumb7.shutterstock.com/display_pic_with_logo/109564/436440067/stock-vector-human-resources-management-select-employee-recruitment-concept-of-human-resources-management-cv-436440067.jpg",
                    "subtitle":"#{@property.first.price}",
                    "buttons":[
                      {
                        "type":"web_url",
                        "url":"http://chatestate.herokuapp.com/properties/#{@property.first.id}",
                        "title":"Click here!"
                      }
                    ]
                  }
                  if @property.count > 2
                  ,{
                    "title":"#{@property.second.address}",
                    "image_url":"https://thumb7.shutterstock.com/display_pic_with_logo/109564/436440067/stock-vector-human-resources-management-select-employee-recruitment-concept-of-human-resources-management-cv-436440067.jpg",
                    "subtitle":"#@{property.second.price}",
                    "buttons":[
                      {
                        "type":"web_url",
                        "url":"http://chatestate.herokuapp.com/properties/#{@property.second.id}",
                        "title":"Click here!"
                      }
                    ]
                  }
                  end
                  if @property.count > 2
                  ,{
                    "title":"#{@property.third.address}",
                    "image_url":"https://thumb7.shutterstock.com/display_pic_with_logo/109564/436440067/stock-vector-human-resources-management-select-employee-recruitment-concept-of-human-resources-management-cv-436440067.jpg",
                    "subtitle":"#{@property.third.price}",
                    "buttons":[
                      {
                        "type":"web_url",
                        "url":"http://chatestate.herokuapp.com/properties/#{@property.third.id}",
                        "title":"Click here!"
                      }
                    ]
                  }
                  end
                  if @property.count > 3
                  ,{
                    "title":"#{@property.fourth.address}",
                    "image_url":"https://thumb7.shutterstock.com/display_pic_with_logo/109564/436440067/stock-vector-human-resources-management-select-employee-recruitment-concept-of-human-resources-management-cv-436440067.jpg",
                    "subtitle":"#{@property.fourth.price}",
                    "buttons":[
                      {
                        "type":"web_url",
                        "url":"http://chatestate.herokuapp.com/properties/#{@property.fourth.id}",
                        "title":"Click here!"
                      }
                    ]
                  }
                  end
                ]
              }
            }
          }
        ]
      }