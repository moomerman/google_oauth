module GoogleOAuth
  class HashResponse
    
    def initialize(response_hash)
      @hash = response_hash
      @hash = @hash['data'] if @hash['data']
    end
    
    def first
      wrap(@hash.first)
    end
    
    def method_missing(name)
      val = @hash[name] if @hash.key? name
      @hash.each { |k,v| val = v if k.to_s.to_sym == name } unless val
      if val        
        return wrap(val)
      end
      super.method_missing name
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