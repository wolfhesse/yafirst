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
        Yafirst.logger.info(params) if Yafirst.logger
      end

      def search
        Yafirst.logger.info('searching') if Yafirst.logger
      end

      def result
        ['woofer!:', ' alles', :bestens]
      end
    end

  end
end
