class Class
  def attr_accessor_with_history(attr_name)
    attr_name = attr_name.to_s
    attr_reader attr_name
    class_eval %Q{
      def #{attr_name}_history
        @#{attr_name}_history || [nil] # give default value if not assigned
      end

      def #{attr_name}=(new_value)
        @#{attr_name}_history ||= [nil] # shortcut, compare to your line
        @#{attr_name}_history << @#{attr_name} = new_value
      end
    }
  end
end

class Foo
  attr_accessor_with_history :bar
end

f = Foo.new
f.bar = 3
f.bar = :wowzo
f.bar = 'boo!'
puts f.bar_history