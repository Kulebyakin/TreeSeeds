ActiveAdmin.register Price do
  permit_params :amount, :price, :seed_id, :unit

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :seed_id, :amount, :unit, :price
  #
  # or
  #
  # permit_params do
  #   permitted = [:seed_id, :amount, :unit, :price]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
