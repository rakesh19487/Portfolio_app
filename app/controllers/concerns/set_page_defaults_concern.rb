module SetPageDefaultsConcern
    extend ActiveSupport::Concern

    def page_defaults
        @page_title = "Portfolio App"
    end    
end    