# Social Gamer

Website for gamer with no friends
A web app built by using Ruby on Rails and PostgreSQL for the database. 
[Social Gamer](https://social-gamer.herokuapp.com).



### Check your Ruby version

```shell
ruby -v
```

The ouput should start with something like `ruby 2.6.1`

If not, install the right ruby version using [rbenv](https://github.com/rbenv/rbenv) (it could take a while):

```shell
rbenv install 2.5.1
```

### Install dependencies

Using [Bundler](https://github.com/bundler/bundler) 
```shell
bundle install
```

### Initialize the database

```shell
rails db:create db:migrate db:seed
```

## Serve

```shell
rails s
```