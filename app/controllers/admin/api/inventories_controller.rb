module Admin
  module Api
    class InventoriesController < ApplicationController
      def create
        # Refactor and use meta programming to pass params in future
        @inventory = Inventory.create_inventory(params[:name], params[:description], params[:price])
        render json: @inventory
      end

      def show
        @inventory = Inventory.get_inventory(params[:id])
        render json: @inventory
      end

      def index
        @inventories = Inventory.get_all_inventories
        puts @inventories.inspect
        render json: @inventories
      end

      def update
        @inventory = Inventory.update_inventory(
          params[:id],
          params[:name],
          params[:description],
          params[:price]
        )
        render json: @inventory
      end

      def destroy
        Inventory.find_by_id(params[:id]).try(:destroy)
        render body: nil, status: :no_content
      end
    end
  end
end
