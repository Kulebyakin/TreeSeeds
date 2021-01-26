ActiveAdmin.register Seed do
  permit_params :title, :latin_title, :description, :usda, :conifers, :availability, image: []

  index do
    selectable_column
    id_column
    column :title
    column :latin_title
    column :usda
    column :image
    column :conifers
    column :availability
    # column :description
    column :created_at
    actions
  end

  filter :title
  filter :latin_title
  filter :usda
  filter :conifers
  filter :availability
  # filter :description
  # filter :created_at

  form html: { multipart: true } do |f|
    f.inputs do
      f.input :title
      f.input :latin_title
      f.input :usda
      f.input :conifers
      f.input :availability
      f.input :image, as: :file, input_html: { multiple: true }
      f.input :description
      f.input :created_at
    end
    f.actions
  end

end
