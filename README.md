# Real-time Search box
> This project features a real-time search box that provides analytics on the most frequently searched terms.

## Built With

- Ruby on Rails
- Vanilla JS
- Turbo_frames
- Postgresql
- stimulus


## Live Link
[Live]()


## Getting Started

To get a local copy up and running follow these simple steps:

```sh
git clone git@github.com:GhislainMitahi/realtimesearch.git
cd realtimesearch
```

### Prerequisites
Before starting make sure that you have the following runing on your computer

- `Ruby 3.2.4`
- `Rails 7.1.3.3`
- `PostgresSQL`

### Setup

Install gems with:

```sh
bundle install
```

Create a file `.env` in the root of your project directory to store your database name and the password.

```sh
touch .env
```

`.env` file content

```ruby
DB_USERNAME=your_database_name
DB_PASSWORD=your_database_password
```

Setup database

```sh
rails db:setup
rails db:migrate
rails db:seed
```

Start server 

```sh
rails s
```

Open [http://localhost:3000/](http://localhost:3000/]) in your browser.
 
### Run tests

```
bundle exec rspec
```

## Authors

👤 **Joseph Ogbole**

- GitHub: [@GislainMitahi](https://github.com/GhislainMitahi)
- Twitter: [@MitahiGhis](https://twitter.com/MitahiGhis)
- LinkedIn: [LinkedIn](https://www.linkedin.com/in/ghislain-mitahi/)

## Contributing
Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](https://github.com/GhislainMitahi/realtimesearch/issues).

## Acknowledgments

- Big thanks to Google and ChatGPT for their invaluable research and solutions provided for this task.

## 📝 License

This project is [MIT](./LICENSE) licensed.
