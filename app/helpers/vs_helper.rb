module VsHelper
  def make_it_price(price)
    return "--" if !price.present?
    return "#{price} 元"
  end

  def comparison_result(city_host:city_host, city_away:city_away, item:item)
    return '数据不足' if (!city_host.name_cn.present? or !city_away.name_cn.present? or !city_host[item].present? or !city_away[item].present?)
    return '不分伯仲' if city_away[item] == city_host[item]
    comparison_result = number_to_percentage((city_host[item]-city_away[item])/city_away[item]*100, precision:0)
    symbol = '+' if  city_host[item] > city_away[item]
    return "#{city_host.name_cn} #{symbol}#{comparison_result}"
  end

end
