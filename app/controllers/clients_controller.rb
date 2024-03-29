class ClientsController < ApplicationController
  before_action :authenticate_manager!
  before_action :find_client, only:[:show, :edit, :update, :destroy]

  def index
    @client = Client.new
    @clients = Client.where(manager_id: current_manager.id)
  end

  def active_clients
    @clients = Client.where(manager_id: current_manager.id).active_clients
    @client = Client.new

  end

  def inactive_clients
    @clients = Client.where(manager_id: current_manager.id).inactive_clients
    @client = Client.new

  end







  def show
    @client = Client.new

  end


  def new
    @client = Client.new
  end

  def create
    @client = Client.new(clients_params)
    @client.manager_id = current_manager.id
    if @client.save
      redirect_to clients_path
    else
      render "New"
    end
  end

  def edit
  end

  def update
    if @client.update(clients_params)
      @client.manager_id = current_manager.id
      redirect_to clients_path
    else
      render "Edit"
    end
  end

  def destroy
    @client.destroy
    redirect_to root_path
  end

  private

  def clients_params
    params.require(:client).permit(:company, :address, :phone_number, :email, :comments, :other, :contact_name, :status, :manager_id)
  end

  def find_client
    @client = Client.find(params[:id])
  end

  def filter_options
    params.permit(search: [:status] )

  end
end
