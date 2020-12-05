
class VaultSearch::Scraper 
  attr_accessor :name, :status, :description, :appearances, :location
  
  def self.scrape 
    self.scrape_vaults
  end
  def self.scrape_vaults
    vaults = [] 
    vaults << self.scrape_site
    vaults
  end


  def self.scrape_vaults
    vaults = []
     doc = Nokogiri::HTML(URI.open("https://fallout-archive.fandom.com/wiki/List_of_known_Vaults"))
     rows = doc.search("tbody tr")
     rows.each do |row|
      vault = self.new
      vault.name = row.search('td').map(&:text)
      vault.location = row.search('td').map(&:text)
      vault.description = row.search('td').map(&:text)
      vault.status = row.search('td').map(&:text)
      vault.appearances = row.search('td').map(&:text)
      vaults << vault
    end
    vaults
end
end
