Rails.application.routes.draw do
  get 'projects/index'

  get 'projects/show'

  get 'projects/new'

  get 'projects/edit'

  get 'projects/create'

  get 'projects/update'

  get 'projects/destroy'

  root                         'static_pages#home'
end
