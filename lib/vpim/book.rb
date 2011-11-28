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
      # @string += "BEGIN:VCARD\n"
      if @vcards.length > 0
        # @string += @vcards.first.fields[1].encode
        @vcards.each do |vcard|
          @string += vcard.fields.collect { |f| f.encode }.join
        end
      end
      # @string += "END:VCARD\n"
      @string
    end
  end
end