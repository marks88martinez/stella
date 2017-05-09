class ClientesController < ApplicationController

  def index
   @clients = Cliente.all
  end
  def show
    #code
  end
  def new
    @client = Cliente.new
    @client.build_persona
  end
  def create
    @client = Cliente.new(cliente_params)

    respond_to do |format|
      if @client.save
        format.html { redirect_to contacts_path, notice: I18n.t('message.created') }
        format.json { render :show, status: :created, location: @client }
      else
        format.html { render :new }
        format.json { render json: @client.errors, status: :unprocessable_entity }
      end
    end

  end
  def edit
    #code
  end
  def update
    #code
  end
  def destroy
    #code
  end

  private
    def cliente_params
      params.require(:cliente).permit(:persona_id, persona_attributes:[:nombre, :apellido, :tipo_documento,
        :numero_documento, :direccion, :telefono, :email, :fecha_ingreso])

    end
end
