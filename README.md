# product-currency-app
Application to show price of product according to the location of user.

This is a simple application with a user and a product model on Rails api mode.

User can get the product by simply hitting a api request

For example : http://localhost:3000/products/1?country=United States

In the parameter user need to pass the country name

And if the country name is blank the price of product simply shows in Indian nationa rupees(INR).

To start the project please configure first the database.yml.

Then run:-

rake db:create

rake db:migrate

rake db:seed

to create few product by default.

And then run the request api according to REST for show by passing the particular id and country name.

And in the response you will get a json response of a product name, description and its price according to country name.
