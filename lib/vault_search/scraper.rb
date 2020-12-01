
class VaultSearch::Scraper 
  attr_accessor :name, :status, :appearances, :location

  def self.scrape 
    self.scrape_vaults
  end
  
  def self.scrape_vaults
    vaults = [] 
    vaults << self.scrape_fandom
    vaults
  end

  def self.scrape
    doc = Nokogiri::HTML(URI.open("https://fallout.gamepedia.com/List_of_known_Vaults"))
    vault = self.new 
    @vaults = [] 
    vault.name = doc.css("td")[0].text.strip
    vault.location = doc.css("td")[3].text.strip
    vault.status = doc.css("td")[2].text.strip
    vault.appearances = doc.css("td")[4].text.strip
    @vaults 
  end
end