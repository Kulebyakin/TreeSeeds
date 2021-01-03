ActiveAdmin.register Seed do
  permit_params :title, :latin_title, :description

  index do
    selectable_column
    id_column
    column :title
    column :latin_title
    column :usda
    # column :created_at
    actions
  end

  filter :title
  filter :latin_title
  # filter :sign_in_count
  # filter :created_at

  form do |f|
    f.inputs do
      f.input :title
      f.input :latin_title
      f.input :usda
    end
    f.actions
  end

end
