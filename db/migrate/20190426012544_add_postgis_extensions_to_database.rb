class AddPostgisExtensionsToDatabase < ActiveRecord::Migration[5.2]
  def change
    enable_extension('postgis') unless extensions.include?('postgis')
    enable_extension('postgis_topology') unless extensions.include?('postgis_topology')
    enable_extension('postgis_sfcgal') unless extensions.include?('postgis_sfcgal')
    enable_extension('fuzzystrmatch') unless extensions.include?('fuzzystrmatch')
    enable_extension('address_standardizer') unless extensions.include?('address_standardizer')
    enable_extension('address_standardizer_data_us') unless extensions.include?('address_standardizer_data_us')
    enable_extension('postgis_tiger_geocoder') unless extensions.include?('postgis_tiger_geocoder')
  end
end
