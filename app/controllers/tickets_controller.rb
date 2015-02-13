class TicketsController < ApplicationController

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
    @ticket = Ticket.new ticket_params

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
  end

  private

  def ticket_params
    params.require(:ticket).permit(:title, :description)
  end


end
