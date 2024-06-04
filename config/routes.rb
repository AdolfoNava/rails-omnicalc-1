Rails.application.routes.draw do
  get('/', {:controller => 'omnicalc', :action => 'squareForm'})
  get('/square/new', {:controller => 'omnicalc', :action => 'squareForm'})
  get('/square_root/new', {:controller => 'omnicalc', :action => 'sqrtForm'})
  get('/random/new', {:controller => 'omnicalc', :action => 'rngForm'})
  get('/payment/new', {:controller => 'omnicalc', :action => 'paymentForm'})
  get('/random/results', {:controller => 'omnicalc', :action => 'rngResults'})
  get('/payment/results', {:controller => 'omnicalc', :action => 'paymentResults'})
  get('/square_root/results', {:controller => 'omnicalc', :action => 'sqrtResults'})
  get('/square/results', {:controller => 'omnicalc', :action => 'squareResults'})
end
