ActiveAdmin.register Face do
  permit_params :image

  index do
    id_column
    actions
  end

  form do |f|
    f.inputs do
      
    end
    f.actions
  end

end
