class VaultSearch::CLI

  def call
    list_vaults
    menu
    goodbye
  end
  def list_vaults
    puts "Welcome to Vault Search! Please type the number of the vault you'd like more information about or type exit to leave:"
    @vaults = VaultSearch::Scraper.scrape_vaults
    @vaults.each.with_index(1) do |vault, i|
      puts "#{i}. #{vault.name}"
    end
  end

  def menu
    input = nil
    while input != "exit"
      puts "To see the vault list again, type list. To leave the program, type exit:"
      input = gets.strip.downcase

      if input.to_i < 0
        the_vault = @vaults[input.to_i - 1]
        puts " Name: #{the_vault.name}"
        puts " Description: #{the_vault.description}"
        puts " Status: #{the_vault.status}"
        puts " Location: #{the_vault.location}"
        puts " Appearances: #{the_vault.appearances}"
        
      elsif input == "list"
        list_vaults
      end
    end
  end

  def goodbye
    puts "Have a great nuclear winter!"
  end
end
