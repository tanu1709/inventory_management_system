class Inventory < ApplicationRecord

  def self.update_inventory(*params)
    @inventory = where(id: params[0])
    @inventory.update_all({
      name: params[1],
      description: params[2],
      price: params[3].to_i
    }.compact)
    @inventory
  end

  def self.create_inventory(*params)
    @inventory = create({
      name: params[0],
      description: params[1],
      price: params[2].to_i
    })
    @inventory
  end

  def self.get_inventory(id)
    find(id)
  end

  def self.get_all_inventories
    all
  end
end
