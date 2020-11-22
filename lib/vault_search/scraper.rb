class VaultSearch::Scraper 
  attr_accessor :name, :location, :status, :appearances 
  def self.scrape 
    self.scrape_vaults
end
  def self.scrape_vaults 
    vaults = [] 
    vaults << self.scrape_fandom
end

  def self.scrape_fandom 
    doc = Nokogiri::HTML(open("https://fallout.gamepedia.com/List_of_known_Vaults"))
    vault = self.new 
    vault.name = 
    vault.location = 
    vault.appearances = 
    vault.status = 
end
end
