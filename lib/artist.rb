class Artist
    attr_reader :attributes

    def initialize(attributes)
        @attributes = attributes
    end

    def name
        attributes[:name]
    end

    def born
        attributes[:born]
    end

    def died
        attributes[:died]
    end

    def id
       attributes[:id]
    end

    def country
        attributes[:country]
    end

    def age_at_death
        died.to_i - born.to_i
    end
end