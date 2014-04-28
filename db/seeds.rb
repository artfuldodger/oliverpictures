pictures = Dir[Rails.root.join('public/images/*')]
Picture.destroy_all
pictures.each do |picture|
  Picture.create(public_path: File.basename(picture))
end
