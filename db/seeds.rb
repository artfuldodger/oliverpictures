pictures = Dir[Rails.root.join('db/seeds/pictures/*')]
pictures.each do |picture|
  Picture.create(image: File.open(picture))
end
