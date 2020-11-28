class VaultSearch::Scraper 
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
    vault.name = 
    vault.location = 
    vault.status = 
    vault.appearances = 
  end
end

