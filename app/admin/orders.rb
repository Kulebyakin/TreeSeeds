ActiveAdmin.register Order do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :full_name, :phone, :region_id, :address, :zip, :order, :status, :user

  index do
    selectable_column
    id_column
    column :full_name
    column :phone
    column :region_id
    column :address
    column :zip
    column :order
    column :status
    column :user
    actions
  end

  filter :full_name
  filter :region_id
  filter :status
  # filter :description
  # filter :created_at

  form html: { multipart: true } do |f|
    f.inputs do
      f.input :full_name
      f.input :phone
      f.input :region_id
      f.input :address
      f.input :zip
      # f.input :order, as: :jsonb
      f.input :status
    end
    f.actions
  end

end
