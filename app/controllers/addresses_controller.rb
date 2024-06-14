class AddressesController < ApplicationController
  def index
    @addresses = Address.all.order(created_at: :desc)
  end

  def show
    @address = Address.find(params[:id])
  end

  def new
    @address = Address.new
  end

  def create
    @address = Address.new(address_params)

    if @address.save
      redirect_to(addresses_path, notice: 'Criado com sucesso')
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @address = Address.find(params[:id])

    if @address.destroy
      redirect_to(addresses_path, notice: 'Excluído com sucesso')
    else
      redirect_to(addresses_path, notice: 'Não foi possível excluir')
    end
  end

  private

  def address_params
    params.require(:address)
          .permit(:zip_code, :neighborhood, :number, :city, :state, :complement)
  end
end
