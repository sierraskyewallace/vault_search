class VaultSearch::Vault 
   attr_accessor :name, :status, :description, :appearances, :location
   @@all = []
   def save 
     @@all << self 
   end
   def self.all 
     @@all 
   end
 end
 
     