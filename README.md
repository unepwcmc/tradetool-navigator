## Setup

###Local

- Node: v14.7.0
- Yarn: 1.22.5
- Ruby: 2.6.3

- Clone this repo
- Until wcmc-components is on npm - Clone and build lib https://github.com/unepwcmc/wcmc-components
- cd into treadehub-navigator repo
- Check versions of Ruby and node
- `bundle install`
- `yarn install`
- `rake db:create`
- `rake db:migrate`
- `rake import:tools['filename.csv']` //csv file must be stored in /lib/data/seeds
- `rails s`
- `./bin/webpack-dev-server`
- You will need to re-add the wcmc-components package everytime you re-build it (For example - it still isn't on npm, you pull the latest, create the build files then in this repo you will need to run `yarn add ../wcmc-components`)

## Troubleshooting
- On errors with rake version try all rake commands with `bundle exec` prior the command e.i. `bundle exec rake db:create`
