class Product < ActiveRecord::Base
    validates :product_code, :date_added, :product_name, :product_description, :product_count, presence: true
    validates :product_code, uniqueness: true
end
