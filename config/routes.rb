
Sisexpress::Application.routes.draw do
  resources :produtividades
  resources :sisexpress
  resources :manutencoes
  #get "sisexpress/index"
  #get "sisexpress/pessoa"
  resources :pessoas

  # The priority is based upon order of creation:
  # first created -> highest priority.
    
  # Sample of regular route:
     #match 'sisexpress' => 'pessoas#index'
     match 'sisexpress/index' => 'sisexpress#index'
  
     match 'sisexpress/pessoa/list' => 'pessoas#index'
     match 'sisexpress/pessoa/new' => 'pessoas#new'
     match 'sisexpress/pessoa/edit/:id' => 'pessoas#edit'
     match 'sisexpress/pessoa/show/:id' => 'pessoas#show'
     
     match 'sisexpress/manutencao/list' => 'manutencoes#index'
     match 'sisexpress/manutencao/new' => 'manutencoes#new'
     match 'sisexpress/manutencao/edit/:id' => 'manutencoes#edit'
     match 'sisexpress/manutencao/show/:id' => 'manutencoes#show'
     
     match 'sisexpress/produtividade/list' => 'produtividades#index'
     match 'sisexpress/produtividade/new' => 'produtividades#new'
     match 'sisexpress/produtividade/edit/:id' => 'produtividades#edit'
     match 'sisexpress/ptodutividade/show/:id' => 'produtividades#show'
     
end
