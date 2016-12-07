# nutrients

Simple app, utilizing the [USDA API](https://ndb.nal.usda.gov/ndb/api/doc) database.

## Test Suites
  - [Rspec-Rails](https://github.com/rspec/rspec-rails)
  - [Travis](https://docs.travis-ci.com/user/getting-started/)? for continuous integration
  - Cucumber? (for controllers)
  
## Project Management 
Utilising GitHub's new [Project](https://help.github.com/articles/tracking-the-progress-of-your-work-with-projects/) feature
  - [MVP phase 1](https://github.com/ThuyNT13/nutrients/projects/1)

## Deployment to Heroku

Heroku uses PostgreSQL so be sure to at least have it loaded up in production in your Gemfile. Rails defaults to SQLite but Heroku doesn't support SQLite.

```Ruby
group :production do
  gem 'pg', '0.18.4'
end
```

And when you are ready to bundle install, run `bundle install --without production` instead, to avoid installing unneccessary production gems.

Or setup PostgreSQL as your database when you create your app from the beginning. 

```bash
$ rails new app_name -d postgresql
```

[Sign-up for Heroku](https://signup.heroku.com), if you haven't already. Make sure that Heroku CLI (command-line interface) is installed by running the code below in your terminal. If not, install it from [here](https://devcenter.heroku.com/articles/heroku-cli).

```bash
$ heroku version
```

To initialize the process, login to Heroku and add your [SSH key](https://devcenter.heroku.com/articles/keys). 

```bash
$ heroku login
$ heroku keys:add
```

Inside the directory of your repo, run the following command to create a place in Heroku for your app:

```bash
$ heroku create
```

Now you should be ready to deploy to Heroku so: 

```bash
$ git push heroku master
```

Congratulations! You are officially deployed to Heroku.

But not quite, because if you have a database, you need to migrate the production database up to Heroku, like so:

```bash
$ heroku run rails db:migrate
```

Run logs to diagnose problems"

```bash
$ heroku logs
```

Rename app from default Heroku name:

```bash
 heroku apps:rename new_name
```

More info about deploying to Heroku [here](https://www.railstutorial.org/book/sign_up#sec-professional_grade_deployment).

## [Security](http://guides.rubyonrails.org/security.html#logging)
At the moment, utilising BCrypt for authentication.

## Support

Please open [an issue](https://github.com/ThuyNT13/nutrients/issues) for support.

## Contributing

Please contribute using [Github Flow](https://guides.github.com/introduction/flow/). Create a branch, add commits, and open a [pull request](https://github.com/ThuyNT13/nutrients/pulls).
