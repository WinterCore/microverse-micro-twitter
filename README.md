# Lightweight Twitter clone

![Deploy to Heroku](https://github.com/WinterCore/microverse-micro-twitter/workflows/Deploy%20to%20Heroku/badge.svg)

<br />
<p align="center">
  <a href="https://github.com/WinterCore/microverse-micro-twitter">
    <img src="rails-image.jpg" alt="Logo" width="80" height="80">
  </a>

  <h3 align="center">Light Twitter Clone</h3>

  <p align="center">
    This project consists of building a light weight version of Twitter.
    <br />
    <br />
    <a href="https://github.com/WinterCore/microverse-micro-twitter/issues">Report Bug</a>
    ·
    <a href="https://github.com/WinterCore/microverse-micro-twitter/issues">Request Feature</a>
  </p>
</p>

![screenshot](./demo.gif)

## Built With

- Ruby On Rails
- VSCode/Neovim
- Rubocop
- Sticker
- Github Actions
- Postgresql

## Live Demo

[Live Demo Link](https://rails-micro-twitter.herokuapp.com/)


<!-- INSTALLATION -->
## Usage

To have this app on your pc, you need to:
* have Ruby & Ruby on Rails installed in your computer
* [download](https://github.com/WinterCore/microverse-micro-twitter/archive/development.zip) or clone this repo:
  - Clone with SSH:
  ```
    git@github.com:WinterCore/microverse-micro-twitter.git
  ```
  - Clone with HTTPS
  ```
    https://github.com/WinterCore/microverse-micro-twitter.git
  ```
* and open the terminal inside the repo and run the bundler
  - ```$ bundler install --without production```
* then, run rails db:migrate. This creates the database with the corresponding tables, columns and associations
  - ```$ rails db:migrate```
* then, run rails s. This will start the server at localhost `http://127.0.0.1:3000/`
  - ```$ rails s```
* and finally, you can test it in the console by running
  - ```$ rails console --sandbox```

<!-- AUTOMATED TEST -->
### Automated Test

> There are no Automated Test for this project yet

## Authors

👤 **WinterCore**

- Github: [@wintercore](https://github.com/wintercore)

## 🤝 Contributing

Contributions, issues and feature requests are welcome!

Feel free to check the [issues page](issues/).

## Show your support

Give a ⭐️ if you like this project!

## Acknowledgments

- Microverse
- Andy Leverenz


## 📝 License

This project is [MIT](lic.url) licensed.
