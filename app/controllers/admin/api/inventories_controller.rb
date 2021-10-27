module Admin
  module Api
    class InventoriesController < ApplicationController
      def index
        @inventories = Inventory.all
        render json: @inventories
      end

      def create
        @inventory = Inventory.create({
          name: params[:name],
          description: params[:description],
          price: params[:price].to_i
        })
        render json: @inventory
      end
    end
  end
end
