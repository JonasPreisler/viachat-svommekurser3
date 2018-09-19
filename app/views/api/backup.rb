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
                    "title":"#{@product.first.address}",
                    "image_url":"https://thumb7.shutterstock.com/display_pic_with_logo/109564/436440067/stock-vector-human-resources-management-select-employee-recruitment-concept-of-human-resources-management-cv-436440067.jpg",
                    "subtitle":"#{@product.first.price}",
                    "buttons":[
                      {
                        "type":"web_url",
                        "url":"http://chatestate.herokuapp.com/products/#{@product.first.id}",
                        "title":"Click here!"
                      }
                    ]
                  }
                  if @product.count > 2
                  ,{
                    "title":"#{@product.second.address}",
                    "image_url":"https://thumb7.shutterstock.com/display_pic_with_logo/109564/436440067/stock-vector-human-resources-management-select-employee-recruitment-concept-of-human-resources-management-cv-436440067.jpg",
                    "subtitle":"#@{product.second.price}",
                    "buttons":[
                      {
                        "type":"web_url",
                        "url":"http://chatestate.herokuapp.com/products/#{@product.second.id}",
                        "title":"Click here!"
                      }
                    ]
                  }
                  end
                  if @product.count > 2
                  ,{
                    "title":"#{@product.third.address}",
                    "image_url":"https://thumb7.shutterstock.com/display_pic_with_logo/109564/436440067/stock-vector-human-resources-management-select-employee-recruitment-concept-of-human-resources-management-cv-436440067.jpg",
                    "subtitle":"#{@product.third.price}",
                    "buttons":[
                      {
                        "type":"web_url",
                        "url":"http://chatestate.herokuapp.com/products/#{@product.third.id}",
                        "title":"Click here!"
                      }
                    ]
                  }
                  end
                  if @product.count > 3
                  ,{
                    "title":"#{@product.fourth.address}",
                    "image_url":"https://thumb7.shutterstock.com/display_pic_with_logo/109564/436440067/stock-vector-human-resources-management-select-employee-recruitment-concept-of-human-resources-management-cv-436440067.jpg",
                    "subtitle":"#{@product.fourth.price}",
                    "buttons":[
                      {
                        "type":"web_url",
                        "url":"http://chatestate.herokuapp.com/products/#{@product.fourth.id}",
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