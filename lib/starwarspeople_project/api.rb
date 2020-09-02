class API

    def self.get_data
        response = RestClient.get("https://swapi.dev/api/people/")
        people_array = JSON.parse(response.body) ["results"]
        people_array.each do |people|
           People.new(people)
        end
    end

end
