class Class

  def attr_accessor_with_history(attr_name)
    attr_name = attr_name.to_s # make sure it's a string
    attr_reader attr_name # create the attribute's getter
    attr_reader attr_name+"_history" # create bar_history getter
    # check if the @attr_name_history defined?/exists...if not initialized first
    # than do as usual for setter. 
    
    class_eval %Q{

      def #{attr_name}=(val)
      	@#{attr_name}_history=[] if !defined? @#{attr_name}_history
      	@#{attr_name}_history << @#{attr_name}
      	@#{attr_name}=val
      end
    }
  end
end

