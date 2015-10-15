class LineitemsController < ApplicationController
  before_action :set_lineitem, only: [:show, :edit, :update, :destroy]

  def index
    @lineitems = Lineitem.all
  end

  def show
  end

  def new
    @lineitem = Lineitem.new
  end

  def edit
  end

  def create
    @lineitem = Lineitem.new(item_params)

    respond_to do |format|
      if @lineitem.save
        format.html { redirect_to @lineitem, notice: 'Lineitem was successfully created.' }
        format.json { render :show, status: :created, location: @lineitem }
      else
        format.html { render :new }
        format.json { render json: @lineitem.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /items/1
  # PATCH/PUT /items/1.json
  def update
    respond_to do |format|
      if @lineitem.update(item_params)
        format.html { redirect_to @lineitem, notice: 'Item was successfully updated.' }
        format.json { render :show, status: :ok, location: @lineitem }
      else
        format.html { render :edit }
        format.json { render json: @item.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @lineitem.destroy
    respond_to do |format|
      format.html { redirect_to items_url, notice: 'Lineitem was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lineitem
      @lineitem = Lineitem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lineitem_params
      params.require(:item).permit(:name, :description, :price, :quantity)
    end
end
