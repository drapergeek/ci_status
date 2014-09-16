#curl https://circleci.com/api/v1/project/thoughtbot/merck-connectivity/tree/master?circle-token=TOKEN
require 'rest_client'
require 'pry'



project = ARGV[0]
branch_name = ARGV[1]
token = ENV['CIRCLE_CI_TOKEN']

url = "https://circleci.com/api/v1/project/#{project}/tree/#{branch_name}?circle-token=#{token}"
response = RestClient.get(url, accept: :json)
status = JSON.parse(response.body)[0]["status"]

puts "#{branch_name} - #{status}"
