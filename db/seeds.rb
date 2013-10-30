car = Category.create(:name => "Cars")
pet =Category.create(:name => "Pets")
house = Category.create(:name => "Houses")
olitar = Category.create(:name => "Olitars")

car_post_1 = Post.create(:title => "Honda", :description => "Really good car.", :price => 12000, :email => "as.com")
car.posts << car_post_1
pets_post_1 = Post.create(:title => "Puppy", :description => "Really good puppy.", :price => 120000000, :email => "dog.com")
pet.posts << pets_post_1
house_post_1 = Post.create(:title => "Shack", :description => "Really good Shack.", :price => 12, :email => "house.com")
house.posts << house_post_1
olitar_post_1 = Post.create(:title => "Olitar", :description => "Really good olitar.", :price => 1200000, :email => "olliecakes.com")
olitar.posts << olitar_post_1
                 
                                                        
