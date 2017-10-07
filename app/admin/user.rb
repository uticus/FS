ActiveAdmin.register User do
  permit_params :email, :name, :description, :manager

  index do
    id_column
    column :email
    column :name
    column :description
    column :manager
    column :created_at
    column :api_key
    actions
  end

  filter :email
  filter :manager

  form do |f|
    f.inputs do
      f.input :email
      f.input :name
      f.input :description
      f.input :manager
      
    end
    f.actions
  end

end
