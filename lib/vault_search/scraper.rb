
class VaultSearch::Scraper 
  attr_accessor :name, :status, :description, :appearances, :location
  
 def self.scrape_vaults
    vaults = []
    doc = Nokogiri::HTML(URI.open("https://fallout.fandom.com/wiki/List_of_Vaults?veaction=edit&section=1"))
    rows = doc.at('table')
    rows = doc.search('tbody tr:not(:first-child)')
    rows.each do |row|
      vault = self.new
      vault.name =  row.search('td').map(&:text)[0]
      vault.location = row.search('td').map(&:text)[3]
      vault.description = row.search('td').map(&:text)[1]
      vault.status = row.search('td').map(&:text)[2]
      vault.appearances = row.search('td').map(&:text)[4]
      vaults << vault
    end
    vaults
end
end