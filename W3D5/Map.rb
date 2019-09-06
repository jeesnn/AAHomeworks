class Map
    def initialize
        @ivar = []
    end
    def assign(key, val)
        @ivar << [key, value] unless @ivar.any? { |block| block[0] == key }
    end
    def lookup(key)
        @ivar.each do |array|
            return array if array[0] == key
        end
        nil
    end
    def remove(key)
        @ivar.each do |array|
            return @ivar.delete(array) if array[0] == key
        end
        nil
    end
    def show
        @ivar
    end
end