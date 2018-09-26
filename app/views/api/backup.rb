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
                    "title":"#{@speaker.first.address}",
                    "image_url":"https://thumb7.shutterstock.com/display_pic_with_logo/109564/436440067/stock-vector-human-resources-management-select-employee-recruitment-concept-of-human-resources-management-cv-436440067.jpg",
                    "subtitle":"#{@speaker.first.price}",
                    "buttons":[
                      {
                        "type":"web_url",
                        "url":"http://chatestate.herokuapp.com/speakers/#{@speaker.first.id}",
                        "title":"Click here!"
                      }
                    ]
                  }
                  if @speaker.count > 2
                  ,{
                    "title":"#{@speaker.second.address}",
                    "image_url":"https://thumb7.shutterstock.com/display_pic_with_logo/109564/436440067/stock-vector-human-resources-management-select-employee-recruitment-concept-of-human-resources-management-cv-436440067.jpg",
                    "subtitle":"#@{speaker.second.price}",
                    "buttons":[
                      {
                        "type":"web_url",
                        "url":"http://chatestate.herokuapp.com/speakers/#{@speaker.second.id}",
                        "title":"Click here!"
                      }
                    ]
                  }
                  end
                  if @speaker.count > 2
                  ,{
                    "title":"#{@speaker.third.address}",
                    "image_url":"https://thumb7.shutterstock.com/display_pic_with_logo/109564/436440067/stock-vector-human-resources-management-select-employee-recruitment-concept-of-human-resources-management-cv-436440067.jpg",
                    "subtitle":"#{@speaker.third.price}",
                    "buttons":[
                      {
                        "type":"web_url",
                        "url":"http://chatestate.herokuapp.com/speakers/#{@speaker.third.id}",
                        "title":"Click here!"
                      }
                    ]
                  }
                  end
                  if @speaker.count > 3
                  ,{
                    "title":"#{@speaker.fourth.address}",
                    "image_url":"https://thumb7.shutterstock.com/display_pic_with_logo/109564/436440067/stock-vector-human-resources-management-select-employee-recruitment-concept-of-human-resources-management-cv-436440067.jpg",
                    "subtitle":"#{@speaker.fourth.price}",
                    "buttons":[
                      {
                        "type":"web_url",
                        "url":"http://chatestate.herokuapp.com/speakers/#{@speaker.fourth.id}",
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