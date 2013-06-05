module Yafirst
  module SysArch

    class IndexAdapter
      attr_reader :config

      def initialize(params)

        if params[:config]
          @config = params[:config]
        end
      end

      def add_filter(params)

      end

      def search

      end

      def result
        ['woofer!:', ' alles', :bestens]
      end
    end
  end
end
