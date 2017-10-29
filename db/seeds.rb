
Project.delete_all
User.delete_all

User.create({
  name: "Faye",
  password: "testp@ssword"
})

10.times do |project|
  Project.create({
    name: "Test app",
    image_url: "https://pixabay.com/photo-1012681/",
    description: "#{project} getting things done!",
    link_to_project: "https://github.com/fhayes301/Lab-Tracker",
    user_id: 1
    })
end
