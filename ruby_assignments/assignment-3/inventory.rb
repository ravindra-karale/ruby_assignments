load 'shopkeeper.rb'
load 'user.rb'

class Inventory
  def inventory_main
    while  true
      puts "What would you like to do?
            1. shopkeeper.
            2. user.
            3. Exit."
      case gets.strip
      when  "1"
        obj = Shopkeeper.new
        obj.product_menu
      when  "2"
        obj = User.new
        obj.user_menu
      when "3"
        break
      end
    end
  end
end

obj = Inventory.new
obj.inventory_main