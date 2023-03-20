## Setup

###Local

- Node: v14.7.0
- Yarn: 1.22.5
- Ruby: 2.6.3


- Until wcmc-components is on npm - Clone and build lib https://github.com/unepwcmc/wcmc-components

- Clone this repo e.g. `git clone git@github.com:unepwcmc/tradehub-navigator.git`
- `cd tradehub-navigator`

```
nvm use 14.7.0
```

- Install dependencies and imports and run the server

```
bundle install
bundle exec rake db:create
bundle exec rake db:migrate
bundle exec rake import:tools['filename.csv'] 

# any new csv file must be stored in /lib/data/seeds 

bundle exec rails s
```
- new CSV import

```
bundle exec rake db:reset
bundle exec rake import:tools['tools-navigator.csv']
```

- Install JS dependencies and run webpack

```
yarn install
bin/webpack-dev-server
```

### CSV download configuration

In order to choose if you want a column (`table_attribute`) to be in the CSV download (when the user click `DOWNLOAD CSV`) the property `show_in_csv` in the `table_attribute` must be set. For intance, in the `tool.rb` file you must set the property to `true` if you want to have the url column in the CSV download and `false` otherwise.
```
table_attribute :url,
    title: 'URL',
    type: 'single',
    show_in_table: true,
    show_in_modal: true,
    show_in_csv: true or false
```

### Deployment

`bundle exec cap staging deploy`

log in to the server
```
ssh -i  ~/.ssh/{your-key} wcmc@web-supported-staging.linode.unep-wcmc.org
cd tradehub-navigator/current
RAILS_ENV=staging bundle exec rake db:drop
RAILS_ENV=staging bundle exec rake db:create
RAILS_ENV=staging bundle exec rake db:migrate
RAILS_ENV=staging bundle exec rake import:tools['tools-navigator.csv']
# on zsh, you may have to escape the brackets e.g.: \['tools-navigator.csv'\]
```
