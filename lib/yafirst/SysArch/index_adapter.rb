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
        Yafirst.logger.info("#{self}.add_filter .. #{params}") if Yafirst.logger
      end

      def search
        Yafirst.logger.info("#{self}.search") if Yafirst.logger
      end

      def result
        Yafirst.logger.info("#{self}"+' returns result') if Yafirst::logger
        ['woofer!:', ' alles', :bestens]
      end
    end

  end
end
