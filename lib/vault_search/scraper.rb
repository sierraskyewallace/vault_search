
class VaultSearch::Scraper 
  attr_accessor :name, :status, :appearances, :location

  def self.scrape_site
    doc = Nokogiri::HTML(URI.open("https://fallout-archive.fandom.com/wiki/List_of_known_Vaults"))

    rows = doc.css("tbody tr")
    rows.each do |row|
    name, location, status, appearances = row.css('td').map(&:text)

  end
end
end