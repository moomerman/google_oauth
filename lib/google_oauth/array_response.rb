module GoogleOAuth
  class ArrayResponse
    
    def initialize(response_array)
      @array = response_array
    end
    
    def each
      @array.each do |val|
        yield(wrap(val))
      end
    end
    
    def first
      wrap(@array.first)
    end
    
    def size
      @array.size
    end
    
    def length
      @array.length
    end
    
    private
      def wrap(val)
        if val.is_a? Hash
          GoogleOAuth::HashResponse.new(val)
        elsif val.is_a? Array
          GoogleOAuth::ArrayResponse.new(val)
        else
          val
        end
      end
  end
end