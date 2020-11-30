

class VaultSearch::Scraper 
  attr_accessor :name, :location, :status, :appearances
  
  def self.scrape 
    self.scrape_vaults
  end
  
  def self.scrape_vaults
    vaults = [] 
    vaults << self.scrape_fandom
    vaults
  end
  
  def self.scrape_fandom
    doc = Nokogiri::HTML(open("https://fallout.gamepedia.com/List_of_known_Vaults"))
    binding.pry
   
    vault = self.new 
    
    vault.name = doc.search
    vault.location = doc.search
    vault.status = doc.search 
    vault.appearances = doc.search 
  end
end