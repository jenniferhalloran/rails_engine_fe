class BaseService
    def self.connection
        Faraday.new(url: 'http://localhost:3000')
    end

    def self.get_json(response)
        JSON.parse(response.body, symbolize_names: true)
    end
end 