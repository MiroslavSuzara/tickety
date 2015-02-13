class TicketsController < ApplicationController

  def index
    @tickets = Ticket.all
  end

  def show
  end

  def new
    @ticket = Ticket.new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

end
