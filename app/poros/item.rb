class Item 
    attr_reader :name,
                :description,
                :unit_price,
                :merchant_id,
                :id

    def initialize(data)
      @id = data[:id]
      @name = formatted_name(data[:attributes][:name])
      @description = data[:attributes][:description]
      @unit_price = data[:attributes][:unit_price]
      @merchant_id = data[:attributes][:merchant_id]
    end

    def formatted_name(name)
        name.remove "Item "
    end
end