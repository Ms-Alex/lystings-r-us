# LystingsRUs
> Are you a realtor looking to post a new lysting? Or maybe you're not a realtor, and are looking for a new apartment? This application has got it!

Using Ruby on Rails, LystingsRUS was created to connect realtors to others that are looking to for apartments to rent. If you are a realtor, you can post a new listing; also, edit or delete your OWN listing, not others'. As a realtor you cannot leave a review. If you are not a realtor you are allowed to add a review. You are also able to favorited listings, or remove them. Both users are able to message other users.


<p align="center">
  <img src="https://media.giphy.com/media/1rtP3zy4UBNRTe2ePA/giphy.gif" alt="lystingsRUs still video">
</p>

## Installation

OS X & Linux:

```sh
bundle install
```

## Usage example

Before entering LystingsRUs, you must login with your email and password. Don't have one, you can create one:

<p align="center">
  <img src="https://media.giphy.com/media/9xrgdeGRsU8B4kUB7b/giphy.gif" alt="lystingsRUs demo 1">
</p>


If you are not a realtor, you can view your favorites in your profile. You can add other listings to your favorites or remove them, as well as leave a review to a listing:

<p align="center">
  <img src="https://media.giphy.com/media/9S1AIm0OZY2aMiOJeR/giphy.gif" alt="lystingsRUs demo 2">
</p>


If you are a realtor, you can post a new listing and view your listings in your profile. You also have the option to edit or delete your listings, as well:

<p align="center">
  <img src="https://media.giphy.com/media/1kTWTf7WGuMuFeObVW/giphy.gif" alt="lystingsRUs demo 3">
</p>


There is also a message center, where users can communicate with any other users:

<p align="center">
  <img src="https://media.giphy.com/media/8FY7cREL14HGMOpfng/giphy.gif" alt="lystingsRUs demo 4">
</p>



## Development setup

back end:
```sh
rails db:create
rails db:migrate
rails s
```
Open a new tab, and go to (`localhost:3000/signup`) or (`localhost:3000/signup`)

## Release History

* 0.1.0
    * The first proper release

## Meta

Alexandra Hernandez – ms.hernandeza1@gmail.com

Alan Golman - alan.golman@flatironschool.com

[https://github.com/Ms-Alex/github-link]

[https://github.com/alangolm/github-link]

## Contributing

1. Fork it (<https://github.com/Ms-Alex/lystings-r-us/fork>)
2. Create your feature branch (`git checkout -b feature/fooBar`)
3. Commit your changes (`git commit -am 'Add some fooBar'`)
4. Push to the branch (`git push origin feature/fooBar`)
5. Create a new Pull Request