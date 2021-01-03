ActiveAdmin.register Seed do
  permit_params :title, :latin_title, :description, :usda, :image

  index do
    selectable_column
    id_column
    column :title
    column :latin_title
    column :usda
    column :image
    # column :description
    column :created_at
    actions
  end

  filter :title
  filter :latin_title
  filter :usda
  # filter :description
  # filter :created_at

  form do |f|
    f.inputs do
      f.input :title
      f.input :latin_title
      f.input :usda
      f.input :image
      f.input :description
      f.input :created_at
    end
    f.actions
  end

end
