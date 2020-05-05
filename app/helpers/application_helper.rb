module ApplicationHelper

    def check_login_nav(style = '', brtag)
         if current_user.is_a?(GuestUser)
            (link_to 'Login', new_user_session_path, class: style + " " + set_active_class(new_user_session_path)) + brtag.html_safe +
            (link_to 'Register', new_user_registration_path, class: style + " " + set_active_class(new_user_registration_path))
         else
            link_to "Logout", destroy_user_session_path, method: :delete, class: style
         end 
    end    

    def session_source
         if session[:source]
            content_tag :p, "Thanks for visiting from #{session[:source]}"
        end
    end    

    def nav_links
      [
         {
            nav_name: 'Home',
            path: root_path
         },
         {
            nav_name: 'About',
            path: about_path
         },
         {
            nav_name: 'Contact',
            path: contact_path
         },
         {
            nav_name: 'Blogs',
            path: blogs_path
         },
         {
            nav_name: 'Portfolios',
            path: portfolios_path
         }
      ]
    end  


    def set_active_class(path_name)
      active_class = ''
      if current_page?(path_name)
         active_class = 'active'
      else
         active_class = ''
      end
      active_class
    end  

    def set_nav_links(tag_attr, tag_style)
      navs = ""
      nav_links.each do |nav|
          navs <<  "<#{tag_attr}>"+'<a class='+ "'" +"#{tag_style} #{set_active_class(nav[:path])}"+ "' href=#{nav[:path]}>#{nav[:nav_name]}</a>" + "</#{tag_attr}>" 
      end   
      navs.html_safe
    end  


    def alerts
      alert = (flash[:alert] || flash[:error] || flash[:notice])
      if alert
         alert_generator alert
      end   
    end  

    def alert_generator msg
      js add_gritter(msg, :title => "Portfolio App", :sticky => false)
    end  
end
