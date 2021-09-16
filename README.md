## Setup

###Local

- Node: v14.7.0
- Yarn: 1.22.5
- Ruby: 2.6.3

- Clone this repo
- Until wcmc-components is on npm - Clone and build lib https://github.com/unepwcmc/wcmc-components
- cd into treadehub-navigator repo
- Check versions of Ruby and node

```
bundle install
bundle exec rake db:create
bundle exec rake db:migrate
bundle exec rake import:tools['filename.csv'] # csv file must be stored in /lib/data/seeds

bundle exec rails s
```


```
yarn install
./bin/webpack-dev-server
```
