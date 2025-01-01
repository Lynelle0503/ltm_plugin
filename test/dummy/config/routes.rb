Rails.application.routes.draw do
  mount Ltm::Engine => "/ltm"
  root to:redirect('/ltm')
end
