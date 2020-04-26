class Pirate
    attr_accessor :name, :weight, :height
    
    PIRATE=[]

    def initialize(params)
        @name=params[:name]
        @weight=params[:weight]
        @height=params[:height]
        PIRATE<< self
    end

    def self.pirate
        PIRATE
    end 

end


#pirate= {
 # "name"=>"Ian",
  #"weight"=>"165",
  #"height"=>"95",
  #"ships"=> [
   # {
    #  "name"=>"Titanic",
     # "type"=>"Steam Liner",
      #"booty"=>"Silver"
    #},
    #{
     # "name"=> "Carpathia",
      #"type"=>"Rescue Ship",
      #"booty"=>"Inner Tubes"
    #}
  #]
#}

#pirate.each do |pillage, loot|
 #  puts loot
  #if pillage=="ships"
   # puts pirate["ships"][1].values[0]
    #puts pirate["ships"][1].values[1]
    #puts pirate["ships"][1].values[2]
    #puts pirate["ships"][0].values[0]
    #puts pirate["ships"][0].values[1]
    #puts pirate["ships"][0].values[2]

  




 #       pirate["name"]
  #      pirate["weight"]
   #     pirate["height"]
    #    pirate["ships"][1].values[0]
     #   pirate["ships"][1].values[1]
      #  pirate["ships"][1].values[2]




       # pirate["ships"][0].values[0]
        #pirate["ships"][0].values[1]
        #pirate["ships"][0].values[2]
