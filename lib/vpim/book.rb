module Vpim
  class Book
    def initialize(vcards = nil)
  	  @vcards = vcards || []
    end
  
  	def <<(vcard)
  	  @vcards << vcard
    end
  
    def to_s
  	  @string = ''
      if @vcards.length > 0
        @vcards.each do |vcard|
          @string += vcard.fields.collect { |f| f.encode }.join
        end
      end
      @string
    end
  end
end