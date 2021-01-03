ActiveAdmin.register User do
  permit_params :username, :email, :password, :password_confirmation, :admin

  index do
    selectable_column
    id_column
    column :username
    column :email
    column :admin
    column :current_sign_in_at
    column :sign_in_count
    column :created_at
    actions
  end

  filter :username
  filter :email
  filter :admin
  filter :current_sign_in_at
  filter :sign_in_count
  filter :created_at

  form do |f|
    f.inputs do
      f.input :username
      f.input :email
      f.input :admin, :label => "Administrator"
      f.input :password
      f.input :password_confirmation
    end
    f.actions
  end

end
