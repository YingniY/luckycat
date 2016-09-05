class CatsController < ApplicationController
  before_action :set_cat, only: [:show, :edit, :update, :destroy]

  # GET /cats
  # GET /cats.json
  def index
    @cats = Cat.all
  end
 helper_method :magic8


  def magic8
  ["You will find a bushel of money", "Your smile will tell you what makes you feel good", "Don’t panic", "The best year-round temperature is a warm heart and a cool head", "It could be better, but it’s good enough.", "You will find a thing. It may be important","Your reality check about to bounce.","Two days from now, tomorrow will be yesterday.","Stop eating now. Food poisoning no fun.","You are cleverly disguised as responsible adult.","Drive like hell, you will get there.","Okay to look at past and future. Just don’t stare.","You will soon have an out of money experience.","The end is near, might as well have dessert.","Marriage lets you annoy one special person for the rest of your life","I cannot help you, for I’m just a cookie","Come back later….I’m sleeping (yes, cats need their sleep too)","In times of tech trouble, restart computer"].sample

  end


  # GET /cats/1
  # GET /cats/1.json
  def show
  end

  # GET /cats/new
  def new
    @cat = Cat.new
  end

  # GET /cats/1/edit
  def edit
  end

  # POST /cats
  # POST /cats.json
  def create
    @cat = Cat.new(cat_params)

    respond_to do |format|
      if @cat.save
        format.html { redirect_to @cat, notice: 'Cat was successfully created.' }
        format.json { render :show, status: :created, location: @cat }
      else
        format.html { render :new }
        format.json { render json: @cat.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cats/1
  # PATCH/PUT /cats/1.json
  def update
    respond_to do |format|
      if @cat.update(cat_params)
        format.html { redirect_to @cat, notice: 'Cat was successfully updated.' }
        format.json { render :show, status: :ok, location: @cat }
      else
        format.html { render :edit }
        format.json { render json: @cat.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cats/1
  # DELETE /cats/1.json
  def destroy
    @cat.destroy
    respond_to do |format|
      format.html { redirect_to cats_url, notice: 'Cat was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cat
      @cat = Cat.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cat_params
      params.require(:cat).permit(:question, :answer)
    end
end
