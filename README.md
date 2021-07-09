## Setup

###Local

- Node: v14.7.0
- Yarn: 1.22.5

- Clone this repo
- Until wcmc-components is on npm - Clone and build lib https://github.com/unepwcmc/wcmc-components
- cd into treadehub-navigator repo
- Check versions of Ruby and node
- `bundle install`
- `yarn install`
- `rails db:create db:migrate`
- `rails import:tools` //not currently working
- `rails s`
- `./bin/webpack-dev-server`
- You will need to re-add the wcmc-components package everytime you re-build it (For example - it still isn't on npm, you pull the latest, create the build files then in this repo you will need to run `yarn add ../wcmc-components`)