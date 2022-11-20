ActiveAdmin.register Partner do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :nom, :prenom, :logo, :telephone, :email, :password, :ville, :pays, :quartier
  
  form do |f| 
    f.inputs do
      f.input :nom
      f.input :prenom
      f.input :logo, as: :file
      f.input :telephone
      f.input :email
      f.input :password
      f.input :ville
      f.input :pays
      f.input :quartier
    end
    f.actions
  end

  index do
    selectable_column
    column :nom
    column :prenom
    column :telephone
    column :ville
    column :quartier
    column :logo do |ad|
      image_tag url_for(ad.logo), style: 'width: 100px' if ad.logo.attached?
    end
    actions
  end
  
end
