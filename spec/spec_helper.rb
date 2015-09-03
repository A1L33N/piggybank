ENV['RACK_ENV'] = 'test'

require("bundler/setup")
Bundler.require(:default, :test)
set(:root, Dir.pwd())


Dir[File.dirname(__FILE__) + '/../lib/*.rb'].each { |file| require file }

require('capybara/rspec')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)
require('./app')

RSpec.configure do |config|
  config.after(:each) do
    Parent.all().each do |parent|
      parent.destroy()
    end
    Kid.all().each do |kid|
      kid.destroy()
    end
    Chore.all().each do |chore|
      chore.destroy()
    end
    Transaction.all().each do |transaction|
      transaction.destroy()
    end
  end
end
