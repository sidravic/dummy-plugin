module Yaffle
  module ActsAsYaffle




    module ClassMethods
      def acts_as_yaffle(options = {})
        # your code goes here
        cattr_accessor :yaffle_text_field
        self.yaffle_text_field   = (options[:yaffle_text_field] || :last_sqwak).to_s
      end     
    end

    module InstanceMethods
      def sqwak(string)
        write_attribute(self.class.yaffle_text_field, string.to_sqwak)
      end
    end
  end
end

ActiveRecord::Base.send :include, Yaffle::ActsAsYaffle
