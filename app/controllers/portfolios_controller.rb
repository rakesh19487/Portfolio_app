class PortfoliosController < ApplicationController
    before_action :set_portfolio, only: [:show, :update, :edit, :destroy, :toggle_portfolio_status]
    layout "portfolios"
    access all: [:show, :index], user: {except: [:new, :edit, :create, :update, :destroy, :sort, :toggle_portfolio_status]}, site_admin: :all


    def index
        @portfolio_items = Portfolio.by_position
        @page_title = "Portfolios"
    end    

    def sort
        params[:order].each do |key,value|
            Portfolio.find(value[:id]).update(position: value[:position])
        end
        render body: nil
    end    

    def new
        @portfolio = Portfolio.new
        @portfolio.technologies.build
    end    

    def create
        @portfolio = Portfolio.new(portfolio_params)

        if @portfolio.save
            redirect_to portfolios_path, notice: "Portfolio successfully created"
        else
            render :new, notice: "Something went wrong"    
        end     
    end     

    def edit
    end
    
    def update
        if @portfolio.update(portfolio_params)
            redirect_to portfolios_path, notice: "Portfolio successfully updated"
        else
            render :edit, notice: "Something went wrong ..."
        end        


    end   
    
    def destroy
        @portfolio.destroy
        redirect_to portfolios_path, notice: "Portfolio Successfully deleted"
    end 

    def missing

    end    
    
    private

    def set_portfolio
        @portfolio = Portfolio.find(params[:id])
    end   
    
    def portfolio_params
        params.require(:portfolio).permit(:title, :subtitle, :body, :thumb_image, :main_image, :position, technologies_attributes: [:id, :name, :_destroy])
    end   
end
