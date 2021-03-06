Router.map ->
  @route 'home', path: '/', controller: 'HomeController'
  @route 'about', path: '/about', controller: 'AboutController'
  @route 'propose', controller: 'ProposeController'
  @route 'wishes', controller: 'WishesController'
  @route 'proposal', path: '/proposal/:id/:title?', controller: 'ProposalController'
  @route 'proposals', controller: 'ProposalsController'
  @route 'speaker', path: '/speaker/:id/:name?', controller: 'SpeakerController'
  @route 'speakers', controller: 'SpeakersController'
  @route 'users', controller: 'UsersController'
  @route 'user', template: 'speaker', path: '/user/:id/:name?', controller: 'SpeakerController'
  @route 'wish', path: '/wish/:id/:title?', controller: 'WishController'
  @route 's2013', path: '/s2013', controller: 'S2013Controller'
  @route 'info', path: '/info', controller: 'InfoController'

Router.configure
  layout: 'layout'
  loadingTemplate: 'loading'


Deps.autorun ->
  Router.current()
  Deps.afterFlush ->
    $(window).scrollTop(0)

Router.fullPath = (routeName, params) ->
  Meteor.absoluteUrl().slice(0, -1) + Router.path(routeName, params)