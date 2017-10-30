
Project.delete_all
User.delete_all

User.create({
  name: "Faye",
  password: "testp@ssword"
})

10.times do |project|
  Project.create({
    name: "Test app",
    image_url: "https://tctechcrunch2011.files.wordpress.com/2015/04/codecode.jpg?w=659&zoom=2",
    description: "#{project} getting things done!",
    link_to_project: "https://github.com/fhayes301/Lab-Tracker",
    user_id: 1
    })
end
