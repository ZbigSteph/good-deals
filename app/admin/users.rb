ActiveAdmin.register User do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :nom, :prenom, :email, :role, :telephone, :password, :password_confirmation
  
  form do |f| 
    f.inputs do
      f.input :nom
      f.input :prenom
      f.input :telephone
      f.input :email
      f.input :role
      f.input :password
      f.input :password_confirmation
    end
    f.actions
  end
  
end
