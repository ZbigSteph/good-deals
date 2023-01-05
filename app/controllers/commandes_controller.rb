class CommandesController < ApplicationController
  skip_before_action :authenticate_request, only: %i[index show my_commandes article_commander]
  before_action :set_commande, only: %i[show edit update destroy]

  # GET /commandes or /commandes.json
  def index
    @commandes = Commande.all
  end

  # GET /commandes/1 or /commandes/1.json
  def show; end

  # GET /commandes/new
  def new
    @commande = Commande.new
  end

  # GET /commandes/1/edit
  def edit; end

  # POST /commandes or /commandes.json
  def create
    @commande = Commande.new(commande_params)

    respond_to do |format|
      if @commande.save
        format.html { redirect_to commande_url(@commande), notice: 'Commande was successfully created.' }
        format.json { render :show, status: :created, location: @commande }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @commande.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /commandes/1 or /commandes/1.json
  def update
    respond_to do |format|
      if @commande.update(commande_params)
        format.html { redirect_to commande_url(@commande), notice: 'Commande was successfully updated.' }
        format.json { render :show, status: :ok, location: @commande }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @commande.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /commandes/1 or /commandes/1.json
  def destroy
    @commande.destroy

    respond_to do |format|
      format.html { redirect_to commandes_url, notice: 'Commande was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def my_commandes
    @commandes = Commande.joins(:article).select('article.id, article.label, article.description, article.prix, commandes.quantite, commandes.adresse_livraison').where({ 'article.partner_id' => params[:id] })
    render json: @commandes
  end

  def article_commander
    @commandes = Article.select('article.id, article.label, article.description, article.prix, commandes.quantite, commandes.adresse_livraison').joins(:commandes).where({ 'commandes.partner_id' => params[:id] })
    render json: @commandes
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_commande
    @commande = Commande.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def commande_params
    params.require(:commande).permit(:article_id, :partner_id, :quantite, :adresse_livraison)
  end
end
