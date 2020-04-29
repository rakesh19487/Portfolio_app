class PortfoliosController < ApplicationController
    before_action :set_portfolio, only: [:show, :update, :edit, :destroy]

    def index
        @portfolios = Portfolio.all
    end    

    def new
        @portfolio = Portfolio.new
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
        @portfolio = Portfolio.update(portfolio_params)
    end   
    
    def destroy
        @portfolio.destroy
        redirect_to portfolios_path, notice: "Portfolio Successfully deleted"
    end 
    
    
    private

    def set_portfolio
        @portfolio = Portfolio.friendly.find(params[:id])
    end   
    
    def portfolio_params
        params.require(:portfolio).permit(:title, :subtitle, :body, :thumb_image, :main_image)
    end   
end
