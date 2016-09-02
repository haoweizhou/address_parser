class Sheet::Address < Sheet::SheetBase

  Sheet_CLASS = 'Address'

  MAPPING = {
    :id           => 'Id',
    :street       => 'ShippingStreet',
    :city         => 'ShippingCity',
    :state        => 'ShippingState',
    :zip_code     => 'ShippingPostalCode',
    :country      => 'ShippingCountry',
    :lat          => 'lat',
    :lng          => 'lng'
  }

  attr_accessor *MAPPING.keys

end
