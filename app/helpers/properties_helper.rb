module PropertiesHelper
  def converting_to_jpy(rent)
    "#{rent.to_s(:delimited, delimiter: ',')}円"
  end
end
