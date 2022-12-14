# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

3.times do |topic|
  Topic.create!(
    title: "Topic #{topic}"
  )
end

10.times do |blog|
  Blog.create!(
    title: "My Blog Post #{blog}",
    body: 'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available.',
    topic_id: Topic.last.id
  )
end
puts '10 Blogs created'

5.times do |skill|
  Skill.create!(
    title: "Rails #{skill}",
    percent_utilized: 75
  )
end
puts '5 Skills created'

8.times do |portfolio_item|
  Portfolio.create!(
    title: "Portfolio title: #{portfolio_item}",
    subtitle: 'My great service',
    body: 'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available.',
    main_image: 'https://via.placeholder.com/600x400',
    thumb_image: 'https://via.placeholder.com/350x200'
  )
end
1.times do |portfolio_item|
    Portfolio.create!(
      title: "Portfolio title: #{portfolio_item}",
      subtitle: 'Angular',
      body: 'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available.',
      main_image: 'https://via.placeholder.com/600x400',
      thumb_image: 'https://via.placeholder.com/350x200'
    )
  end
puts '9 Portfolio items created'

3.times do |technology|
  Portfolio.last.technologies.create!(
    name: "Technology #{technology}"
  )
end
puts "3 Technologies created"