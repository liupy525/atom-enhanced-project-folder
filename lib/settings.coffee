# Refactoring status: 100%
class Settings
  constructor: (@scope, @config) ->

  get: (param) ->
    atom.config.get "#{@scope}.#{param}"

  set: (param, value) ->
    atom.config.set "#{@scope}.#{param}", value

module.exports = new Settings 'project-folder',
  projectDefaultDirectories:
    order: 1
    type: 'array'
    items:
      type: 'string'
    default: [atom.config.get('core.projectHome')]
    description: 'Comma separated list of directries to default project dir. e.g `~/.atom/packages, ~/github`'
  gitProjectDirectories:
    order: 2
    type: 'array'
    items:
      type: 'string'
    default: []
    description: 'Find git project recursively from directories listed here'
  gitProjectSearchMaxDepth:
    order: 3
    type: 'integer'
    min: 0
    default: 5
  searchRootDirectories:
    order: 4
    type: 'array'
    items:
      type: 'string'
    default: ['~']
    description: 'Comma separated list of directries to search root dir. e.g `~, /`'
  ignoreDirectories:
    order: 5
    type: 'array'
    items:
      type: 'string'
    default: ['.git']
    description: 'Hide listed directories from ADD LIST. e.g `.git, .atom`'
  hideLoadedFolderFromAddList:
    order: 6
    type: 'boolean'
    default: true
    description: 'Hide already added folders from list when adding.'
  closeItemsForRemovedProject:
    order: 7
    type: 'boolean'
    default: false
    description: 'close editor when containing project was removed'
