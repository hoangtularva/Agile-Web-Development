class Product < ApplicationRecord
    validates :title, :description, :image_url, presence: true
    validates :title, uniqueness: true
    validates :image_url, allow_blank: true, format: {
        with:
        %r{\.(gif|jpg|png)\z}i,
        message: 'must be a URL for GIF, JPG or PNG image.'
    }
    validates :price, numericality: { greater_than_or_equal_to: 0.01 }

    has_many :line_items
    has_many :orders, through: :line_items
    before_destroy :ensure_not_referenced_by_any_line_item

    private
        # ensure that there are no line items referencing this product
        def ensure_not_referenced_by_any_line_item
            unless line_items.empty?
                errors.add(:base, 'Line Items present')
                throw :abort
            end
        end
end
