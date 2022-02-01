class Player

  attr_accessor :name, :life_points

  # initialisation de la classe avec nom du joueur + points de vie
  def initialize(player_name)
    @name = player_name
    @life_points = 10
  end

puts"
†††††††††††††††††††††††††††††††††††††††††††††††††††
† Bienvenue sur 'ILS VEULENT TOUS MA POO' !       †
† Le but du jeu est d'être le dernier survivant ! †
†††††††††††††††††††††††††††††††††††††††††††††††††††"
puts""


  # Affiche l'état des joueurs
  def show_state
    puts "#{@name} a #{@life_points} points de vie"
  end


  def gets_damage(damage)
    @life_points -= damage  # inflige des points de dommages
    if @life_points <= 0    # vérifie si les points de vie sont à 0
      puts "Le joueur #{@name} a été tué !"  # si les points de vie = 0 il informe qu'un des joueurs est mort
    end
  end


  def attacks(player)
    puts "#{@name} attaque #{player.name}" # un joueur lance une attaque
    damage = compute_damage
    puts "Il lui inflige #{damage} points de dommages" # calcul des dommages + affiche le résultat
    player.gets_damage(damage) 
  end


  def compute_damage
    return rand(1..6)
  end

end
