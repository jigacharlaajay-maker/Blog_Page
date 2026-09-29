maya = User.find_or_create_by!(email: "maya@example.com") do |user|
	user.name = "Maya Chen"
end

leo = User.find_or_create_by!(email: "leo@example.com") do |user|
	user.name = "Leo Patel"
end

maya.posts.find_or_create_by!(title: "A first post") do |post|
	post.content = "This is a sample post written by Maya."
end

leo.posts.find_or_create_by!(title: "Learning Rails") do |post|
	post.content = "This sample post belongs to Leo and shows the User-Post relationship."
end
