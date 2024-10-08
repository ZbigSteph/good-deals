ActiveAdmin.register Category do
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :cible, :nom_category, :icon, :image

  form do |f|
    f.inputs do
      f.input :cible, as: :select, collection: %w[Homme Femme Enfant]
      f.input :nom_category
      f.input :icon
      f.input :image, as: :file
    end
    f.actions
  end

  index do
    selectable_column
    column :cible
    column :nom_category
    column :image do |ad|
      image_tag url_for(ad.image), style: 'width: 100px' if ad.image.attached?
    end
    actions
  end
end
