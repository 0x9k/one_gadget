require 'one_gadget/emulators/x86'

module OneGadget
  module Emulators
    # Emulator of amd64 instruction set.
    class I386 < X86
      class << self
        def bits
          32
        end

        # @return [String] esp.
        def stack_pointer
          'esp'
        end
      end

      REGISTERS = %w(eax ebx ecx edx edi esi ebp esp eip).freeze
      # Instantiate a {I386} object.
      def initialize
        super(REGISTERS)
      end
    end
  end
end
