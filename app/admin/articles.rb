ActiveAdmin.register Article do
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :category_id, :partner_id, :label, :description, :prix, :image_couverture, autres_images: []

  form do |f|
    f.inputs do
      f.input :category
      f.input :partner
      f.input :label
      f.input :description
      f.input :prix
      f.input :image_couverture, as: :file
      f.input :autres_images, as: :file, input_html: { multiple: true }
    end
    f.actions
  end

  index do
    selectable_column
    column :category
    column :partner
    column :label
    column :prix
    column :image_couverture do |ad|
      image_tag url_for(ad.image_couverture), style: 'width: 100px' if ad.image_couverture.attached?
    end
    actions
  end

  show do
    attributes_table do
      row :category
      row :partner
      row :partner
      row :label
      row :prix
      row :image_couverture do |ad|
        image_tag url_for(ad.image_couverture), style: 'width: 100px'
      end
    end
  end
end
