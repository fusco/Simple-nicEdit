module ActionView
  module Helpers
    class FormBuilder
      def resizable_text_area(method, options = {})
        options[:class] = "" if options[:class].nil?
        options[:class] += " resizable_text_area"

        text_area(method, options)
      end

      def rich_text_area(method, options = {})
        options[:class] = "" if options[:class].nil?
        options[:class] += " simple_nicedit"

        text_area(method, options)
      end
    end

   module AssetTagHelper 
     def include_nicedit_assets
      javascript_include_tag 'nicEdit', 'nicEditInit'
     end

   end
  end
end
