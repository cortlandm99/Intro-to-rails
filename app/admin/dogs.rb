ActiveAdmin.register Dog do
  permit_params :name, :age, :gender, :description, :image_url, :breed_id

  remove_filter :image_attachment, :image_blob
end
