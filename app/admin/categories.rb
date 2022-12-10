ActiveAdmin.register Category do
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :cible, :nom_category, :icon

  form do |f|
    f.inputs do
      f.input :cible, as: :select, collection: %w[Homme Femme Enfant]
      f.input :nom_category
      f.input :icon
    end
    f.actions
  end
end
