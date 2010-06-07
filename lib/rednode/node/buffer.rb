module Rednode::Node
  class Buffer < BindingModule
    def Buffer
      lambda do |*length|
        StringBuffer.new(length[0])
      end
    end
  
    class StringBuffer
      attr_reader :length, :__buffer

      def initialize(length)
        @__buffer = ''
        @length = length
      end

      def toString
        lambda do
          @__buffer
        end
      end
      
      def asciiWrite(string, offset, length)
        @__buffer << string
      end

      def asciiSlice(from, to)
        @__buffer[from..to]
      end
    end
  end
end