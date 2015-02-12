module TechieUser

  class Services

    class << self

      def method_1
        puts 'method working'
      end

      def get_repositories(options)
        global_services(options) do
          case options[:source].to_sym
          when :github
            TechieUser::Github.get_github_repositories(options)
          end
        end
      end

      private

      def global_services(options)
        check_mandatory_params(options)
        yield
      end

      def check_mandatory_params(options)
        raise ArgumentError, 'You should pass :source parameter in options' if options[:source].blank?
        raise ArgumentError.new("Passed source #{options[:source]} is invalid.  Allowed sources are #{TechieUser::ALLOWED_SOURCES}.") unless source_valid?(options[:source])
      end

      def source_valid?(source)
        TechieUser::ALLOWED_SOURCES.include?(source.to_sym) ? true : false
      end

    end # class << self

  end # class Services

end # module TechieUser