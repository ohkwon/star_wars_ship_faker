require "star_wars_ship_faker/version"

module StarWarsShipFaker
  class Name
    @numbers = Array(0..9)
    @letters = Array('A'..'Z')
    @brands = ["Corellian", "Geonosian", "Imperial", "Naboo", "Nebulon", "Neimoidian", "Republic", "Sith", "Techno Union", "Trade Federation", "Koensayr", "Alliance", "Slayin & Korpil", "Calamari", "Seinar Fleet System", "Kuat Drive Yards", "Kuat Systems Engineering"]

    def self.letter
      prng = Random.new
      length = prng.rand(1..4)
      return model_letter = @letters.sample(length).join
    end

    def self.number
      prng = Random.new
      length = prng.rand(2..4)
      return model_number = @numbers.sample(length).join
    end

    def self.model.
      lets = letter
      nums = number
      return total = "#{lets}-#{nums}"
    end

    def self.brand
      return brand_name = @brands.sample
    end

    def self.full_name
      model_num = model
      brand_name_pick = brand
      return "#{brand_name_pick} #{model_num}"
    end
  end
end
