require 'rss'
require 'open-uri'

module FeedBot
  module Commands
    class GetPost < SlackRubyBot::Commands::Base
      command 'get_latest_post' do |client, data, _match|
        url = 'https://www.dev.to/feed.rss'
        rss = RSS::Parser.parse(open(url).read, false).items.first
        client.say(channel: data.channel, text: rss.link)
      end

      command 'say_hello' do |client, data, _match|
        client.say(channel: data.channel, text: HelloText.say_hello)
      end
    end
  end
end

class HelloText
  def self.say_hello
    'Hello this is Feedbot'
  end
end
