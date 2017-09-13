class BookUnitsController < ApplicationController
  before_action :set_book_unit, only: [:show, :edit, :update, :destroy]

  # GET /book_units
  # GET /book_units.json
  def index
    @book_units = BookUnit.all
  end

  # GET /book_units/1
  # GET /book_units/1.json
  def show
  end

  # GET /book_units/new
  def new
    @book_unit = BookUnit.new(book_id: params[:book_id])
  end

  # GET /book_units/1/edit
  def edit
  end

  # POST /book_units
  # POST /book_units.json
  def create
    @book_unit = BookUnit.new(book_unit_params)

    respond_to do |format|
      if @book_unit.save
        format.html { redirect_to @book_unit, notice: 'Book unit was successfully created.' }
        format.json { render :show, status: :created, location: @book_unit }
      else
        format.html { render :new }
        format.json { render json: @book_unit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /book_units/1
  # PATCH/PUT /book_units/1.json
  def update
    respond_to do |format|
      if @book_unit.update(book_unit_params)
        format.html { redirect_to @book_unit, notice: 'Book unit was successfully updated.' }
        format.json { render :show, status: :ok, location: @book_unit }
      else
        format.html { render :edit }
        format.json { render json: @book_unit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /book_units/1
  # DELETE /book_units/1.json
  def destroy
    @book_unit.destroy
    respond_to do |format|
      format.html { redirect_to book_units_url, notice: 'Book unit was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_book_unit
      @book_unit = BookUnit.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def book_unit_params
      params.require(:book_unit).permit(:book_id, :available, :edition, :condition, :year)
    end
end
