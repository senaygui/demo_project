require "httpclient"

def user_index
	client = HTTPClient.new
	cont = client.get_content 'https://reqres.in/api/users?page=2'
end

puts user_index

def create_user
	client = HTTPClient.new
	query =  {
    :name => "Joe Stub",
    :job => "manager",
  }
	response = client.post("https://reqres.in/api/users", query)
	response.status
	response.body
end

puts create_user


def update_user
	client = HTTPClient.new
	query =  {
    :name => "sam",
    :job => "IT manager",
  }
	response = client.put("https://reqres.in/api/users/2", query)
	response.status
	response.body
end

puts update_user

def destroy_user
	client = HTTPClient.new
	query =  {
    :name => "sam",
    :job => "IT manager",
  }
	response = client.delete("https://reqres.in/api/users/3", query)
	response.status
end

puts destroy_user