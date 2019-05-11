# Postal Address and Geographic information
class Address < ApplicationRecord
  belongs_to :addressable, polymorphic: true
end
