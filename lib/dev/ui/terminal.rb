require 'dev/ui'
require 'io/console'

module Dev
  module UI
    module Terminal
      # Returns the width of the terminal, if possible
      # Otherwise will return 80
      #
      def self.width
        if console = IO.console
          console.winsize[1]
        else
          80
        end
      rescue Errno::EIO
        80
      end
    end
  end
end
