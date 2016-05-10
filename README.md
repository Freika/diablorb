# Diablorb

Ruby wrapper for Battle.net Diablo 3 API

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'diablorb', github: 'Freika/diablorb'
```

And then execute:

    $ bundle install

### Required environment variables

`BATTLE_NET_KEY` — key from here: https://dev.battle.net/apps/mykeys
`BATTLE_NET_REGION` — one of availeble regions: `us`, `eu`, `kr` or `tw`
`BATTLE_NET_LOCALE` — one of available locales.

####Locales by regions:

EU: `en_GB`, `de_DE`, `es_ES`, `fr_FR`, `it_IT`, `pl_PL`, `pt_PT`, `ru_RU`
US: `en_US`, `pt_BR`, `es_MX`
KR: `ko_KR`
TW: `zh_TW`

## Usage

`Diablorb.profile(battletag)` returns profile information.
`Diablorb.hero(battletag, hero_id)` returns hero information.
`Diablorb.item_data(item_name)` returns item information.
`Diablorb.follower_data(follower_class)` returns follower information.
`Diablorb.artisan_data(artisan_name)` returns artisan information.

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/Freika/diablorb.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

