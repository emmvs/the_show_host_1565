require "open-uri"

file = URI.open("https://www.southernliving.com/thmb/Rz-dYEhwq_82C5_Y9GLH2ZlEoYw=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/gettyimages-837898820-1-4deae142d4d0403dbb6cb542bfc56934.jpg")
article = Article.new(title: "Cute dog", body: "But Widget is cuter")
article.photo.attach(io: file, filename: "dog.png", content_type: "image/jpg")
article.save

file = URI.open("https://i.guim.co.uk/img/media/1d3a1b588915aaae8d2ceefae6294414d7181077/0_100_5758_3455/master/5758.jpg?width=1200&height=900&quality=85&auto=format&fit=crop&s=6f124baada9946783301835fe7a9233d")
article = Article.new(title: "Sloths!", body: "Aren't they just great!")
article.photo.attach(io: file, filename: "sloth.png", content_type: "image/jpg")
article.save

puts "Articles created! 🐝"