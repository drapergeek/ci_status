#curl https://circleci.com/api/v1/project/thoughtbot/merck-connectivity/tree/master?circle-token=TOKEN



project = ARGV[0]
branch_name = ARGV[1]
token = ENV['CIRCLE_CI_TOKEN']

url = "https://circleci.com/api/v1/project/#{project}/tree/#{branch_name}?circle-token=#{token}"
puts url
puts `curl #{url}`
