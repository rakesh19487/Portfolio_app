module ApplicationHelper

    def check_login_nav style
         if current_user.is_a?(GuestUser)
            (link_to 'Login', new_user_session_path, class: style) + "<br>".html_safe +
            (link_to 'Register', new_user_registration_path, class: style)
         else
            link_to "Logout", destroy_user_session_path, method: :delete, class: style
         end 
    end    

    def session_source
         if session[:source]
            content_tag :p, "Thanks for visiting from #{session[:source]}"
        end
    end    
end
