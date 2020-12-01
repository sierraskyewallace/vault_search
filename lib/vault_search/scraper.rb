

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
    doc = Nokogiri::HTML(URI.open("https://fallout.gamepedia.com/List_of_known_Vaults"))
    binding.pry
   
    vault = self.new 
    
    vault.name = doc.css("td")[0].text
    vault.location = doc.css("td")[3].text
    vault.status = doc.css("td")[2].text
    vault.appearances = doc.css("td")[4].text
  end
end