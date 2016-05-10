class Diablorb::Config
  attr_accessor :api_key, :region, :locale

  def initialize(hash)
    @api_key ||= hash[:api_key]
    @region  ||= hash[:region]
    @locale  ||= hash[:locale]
  end
end
