ActiveAdmin.register Slider do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :titre, :image
  
  form do |f|
    f.inputs do
      f.input :titre
      f.input :image, as: :file
    end
    f.actions
  end

  index do
    selectable_column
    column :titre
    column :image do |ad|
      image_tag url_for(ad.image), style: 'width: 100px' if ad.image.attached?
    end
    actions
  end
  
end
