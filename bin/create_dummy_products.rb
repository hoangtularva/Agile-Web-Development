Product.transaction do
    (1..10).each do |i|
        Product.create(:title => "Learn Web Development with Rails #{i}", 
                     :description => "#{i} Ruby on Rails Tutorial book and screencast series 
                     teach you how to develop and deploy real, 
                     industrial-strength web applications with Ruby on Rails.",
                     :image_url => "rails_book.png",
                     :price => 30.00)
    end
end