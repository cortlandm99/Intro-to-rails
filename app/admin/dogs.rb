ActiveAdmin.register Dog do
  permit_params :name, :age, :gender, :description, :image_url, :breed_id
end
