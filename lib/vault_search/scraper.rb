
class VaultSearch::Scraper 
  attr_accessor :name, :status, :appearances, :location
  
  def self.scrape 
    self.scrape_vaults
  end
  def self.scrape_vaults
    vaults = [] 
    vaults << self.scrape_site
    vaults
  end


  def self.scrape_site
    doc = Nokogiri::HTML(URI.open("https://fallout-archive.fandom.com/wiki/List_of_known_Vaults"))
    vault = self.new
    rows = doc.search("tbody tr")
    rows.each do |row|
    name = row.search('td').map(&:text)
    location = row.search('td').map(&:text)
    status = row.search('td').map(&:text)
    appearances = row.search('td').map(&:text)
    vault
  end
end
end