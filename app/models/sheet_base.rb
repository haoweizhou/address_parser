class Sheet::SheetBase

  def initialize(raw_result={})
    raw_result = {} unless raw_result.class == Hash

    self.class::MAPPING.each do |attribute, key|
      if raw_result[key].class == String
        send("#{attribute}=", raw_result[key].strip)
      else
        send("#{attribute}=", raw_result[key])
      end
    end
  end

end
