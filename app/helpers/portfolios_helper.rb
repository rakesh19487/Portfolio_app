module PortfoliosHelper
    def set_image_helper(img, type)
      p "img imag iasasnakanskaskn"
      p img
      if img.model.thumb_image? || img.model.main_image?
        p "S"*50
        p img.url
        p "S"*50
        img
      elsif type == "thumb"
        p "R"*50
        "https://via.placeholder.com/300x300"  
      elsif type == "main"
        p "M"*50
        "https://via.placeholder.com/640x480"  
      end  
    end  

    # set_image_helper(p.thumb_image, "thumb")
    # set_image_helper(p.main_image, "main")
end
