ActiveAdmin.register Item do
  menu :priority => 1

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :name, :item_type, :description, :price
  #
  # or
  #
  # permit_params do
  #   permitted = [:name, :item_type, :description, :price]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  form do |f|
    f.input :name
    f.input :item_type, as: :select, collection: Type.pluck(:name, :id)
    f.input :description
    f.input :price, as: :number
    actions
  end 

  show do
    attributes_table do
      row :name
      row :item_type
      row :description
      row :price
    end
  end
end
