ActiveAdmin.register Dog do
  permit_params :name, :age, :gender, :description, :image, :breed_id
end
