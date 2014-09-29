module NameHelper


  def name_cn( name_en )
    if @name_mappings.nil?
      @name_mappings = {}
      NameMapping.all.each do |element|
        @name_mappings[element.database_name_en.to_sym] = element.name_cn
      end
    end

    return @name_mappings[name_en]
  end

end