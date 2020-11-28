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
    doc = Nokogiri::HTML(open("https://fallout.fandom.com/wiki/List_of_Vaults"))
    vault = self.new 
    vault.name = doc.search
    vault.location = doc.search
    vault.status = doc.search 
    vault.appearances = doc.search 
  end
end

