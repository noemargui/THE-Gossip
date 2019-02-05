class GossipsController < ApplicationController

	def new
    # Méthode qui crée un potin vide et l'envoie à une view qui affiche le formulaire pour 'le remplir' (new.html.erb)
    @gossip = Gossip.new
  end

  def create
  	# Méthode qui créé un potin à partir du contenu du formulaire de new.html.erb, soumis par l'utilisateur
  	# Le contenu de ce formulaire sera accessible dans le hash params
  	# Une fois la création faite, on redirige généralement vers la méthode show (pour afficher le potin créé)
  	@gossip = Gossip.new('user' => User.find(11), 'title' => params[:title], 'content' => params[:content])
  	if @gossip.save #ici on essaye de sauvegarder en base @gossip
  		redirect_to 'static_pages#welcome' #si OK, redirige vers la page index
  	else
  		render 'new' # sinon, il render la view new (celle sur laquelle on est déja)
  	end
  end

end