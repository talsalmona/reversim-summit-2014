class @HomeController extends RouteController
  renderTemplates:
    'nav': to: 'nav'
    'home': to: 'main'
    'login': to: 'login'

  data: ->
    page: 'home'