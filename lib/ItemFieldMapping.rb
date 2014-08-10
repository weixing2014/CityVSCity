module ItemFieldMapping
  def self.field_for(table:table, item:item)
    if table == :cities
      case item.strip
        when "Meal, Inexpensive Restaurant"
          return "meal_in_inexpensive_restaurant"
        else
          return nil
      end
    end
  end
end

