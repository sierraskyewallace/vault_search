class VaultSearch::CLI 
  def call 
    welcome
    vaults
    menu
    goodbye
end
  def welcome 
    #fancy up 
    puts "Welcome to Vault Search!"
    puts "To see a list of vaults, type list."
    puts "To exit the program, type exit."
end

  def list_vaults
    input = gets.strip
    if input == "list" 
      @concerts = VaultSearch::Vault 
      @vaults.each_with_index(1) do |vault, i|
        puts "#{i}. #{vault.name}"
        elsif input == "exit" 
        goodbye
        exit
      else
        "Please type list to see a list of vaults or type exit to leave."
        list_vaults
      end
    end
  end
  
  def menu
    #fancy up
    puts "Please select the number of the vault you'd like to learn more information about or type exit to leave the program:"
    input = gets.strip 
    if input.to_i > 0 
      vault = VaultSearch::Vault.find_by_index(input.to_i - 1)
    puts "#{vault.name} - #{vault.location} - #{vault.appearances} - #{vault.status}"
    elsif
    input == "exit"
    goodbye
    exit
  end
end

def goodbye 
  puts "Have a great nuclear winter! Goodbye!"
end

end
