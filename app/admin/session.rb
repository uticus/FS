ActiveAdmin.register Session do
  permit_params :token, :expires_at, :user

  index do
    id_column
    column :access_token
    column :expires_at
    column :user
    actions
  end

  filter :user

  form do |f|
    f.inputs do
      
    end
    f.actions
  end

end
