require "diablorb/version"
require "diablorb/config"
require 'httparty'

module Diablorb
  include HTTParty

  def self.profile(battletag)
    remote_url = "#{url}/profile/#{battletag}/?locale=#{Diablorb.config.locale}&apikey=#{Diablorb.config.api_key}"
    call_api(remote_url)
  end

  def self.hero(battletag, hero_id)
    remote_url = "#{url}/profile/#{battletag}/hero/#{hero_id}?locale=#{Diablorb.config.locale}&apikey=#{Diablorb.config.api_key}"
    call_api(remote_url)
  end

  def self.item_data(item_name)
    remote_url = "#{url}/data/item/#{item_name}?locale=#{Diablorb.config.locale}&apikey=#{Diablorb.config.api_key}"
    call_api(remote_url)
  end

  def self.follower_data(follower_name)
    followers = %w(templar scoundrel enchantress)
    unless followers.include?(follower_name)
      return "Pass one of this followers: #{followers.join(', ')}"
    end

    remote_url = "#{url}/data/follower/#{follower_name}?locale=#{Diablorb.config.locale}&apikey=#{Diablorb.config.api_key}"
    call_api(remote_url)
  end

  def self.artisan_data(artisan_name)
    artisans = %w(blacksmith jeweler mystic)
    unless artisans.include?(artisan_name)
      return "Pass one of this professions: #{artisans.join(', ')}"
    end

    remote_url = "#{url}/data/artisan/#{artisan_name}?locale=#{Diablorb.config.locale}&apikey=#{Diablorb.config.api_key}"
    call_api(remote_url)
  end

  private

  def self.config
    Diablorb::Config.new(
      api_key: ENV['BATTLE_NET_KEY'], region: ENV['BATTLE_NET_REGION'], locale: ENV['BATTLE_NET_LOCALE']
    )
  end

  def self.url
    "https://#{Diablorb.config.region}.api.battle.net/d3"
  end

  def self.call_api(remote_url)
    encoded_url = URI.encode(remote_url)
    response = HTTParty.get(encoded_url)
    JSON.parse(response.body)
  end
end
