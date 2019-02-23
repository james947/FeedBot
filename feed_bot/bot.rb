module FeedBot
  class Bot < SlackRubyBot::Bot
    help do
      title 'Feed Bot'
      desc 'This bot collects latest posts from dev.to'

      command :get_latest_post do
        title 'get_latest_post'
        desc 'returns the url of the latest post'
      end
      command :say_hello do
        title 'say_hello'
        desc 'Greets you back'
      end
    end
  end
end
