class TicketsController < ApplicationController
  before_action :find_ticket, 
                  only: [:edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]

  def index
    @ticket = Ticket.new
    @tickets = Ticket.all
  end

  def show
  end

  def new
    @ticket = Ticket.new
  end

  def create
    @ticket = current_user.tickets.new ticket_params
    if @ticket.save
      flash[:notice] = "Your Ticket has been created!"
      redirect_to root_path
    else
      flash[:notice] = "Please correct your errors below!"
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
    @ticket.destroy
    redirect_to root_path, notice: "Ticket deleted!"
  end

  private

  def ticket_params
    params.require(:ticket).permit(:title, :description)
  end

  def find_ticket
    @ticket = Ticket.find params[:id]
  end

end
