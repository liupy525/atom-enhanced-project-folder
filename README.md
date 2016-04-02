# enhanced-project-folder

Quickly search/add/remove project folder. [Fork of the powerful [project-folder](https://atom.io/packages/project-folder) by t9md]

![gif](http://7xs6ao.com1.z0.glb.clouddn.com/atom-project-folder.gif)

# What is this?

Atom provide `application:add-project-folder` to add your project to project list.  
And you can right click and chose `Remove Project Folder` to remove project from list.  
This package enables you to quickly do above actions and provide extra command to manipulate project list.

# Features

* Quickly search project folder from root directory or default project directory.
* Quickly add/remove project folder.
* Can go into selected directory to continue searching with `right` and go back with `left`
* Can switch action between `add`/`remove` with `tab` and UI color reflect current action.
* Replace all project folders with selected item.
* Hide already loaded folders from select list when adding.
* Continuously adding, removing without closing select list.
* Find Git project recursively from specified directory.

# Command

* `enhanced-project-folder:add`: Add project folder from default project directory.
* `enhanced-project-folder:search`: Add project folder from root directory.
* `enhanced-project-folder:remove`: Remove project folder.

In mini editor
* `enhanced-project-folder:go-into`: Go into selected directory to continue searching projects.
* `enhanced-project-folder:go-back`: Go back to parent directory.
* `enhanced-project-folder:replace`: Remove project except selected.
* `enhanced-project-folder:switch-action`: Switch action 'add' / 'remove'. CSS style changes depending on action add(`blue`), remove(`red`), so that you can understand what you are doing.
* `enhanced-project-folder:confirm-and-continue`: Confirm action without closing select list, you can continue to add/remove next project folder.

# How to use

Here are four training courses.

## Basic.

1. Start `enhanced-project-folder:add` or `enhanced-project-folder:search` from command palette or from keymap.
2. Chose folder you want to add.
3. Project folder added and listed in tree-view.

## Switch action / Continuous action.

1. Start `enhanced-project-folder:add` or `enhanced-project-folder:search` from command palette or from keymap.
2. Type `space` key on item you want to add, and continue to add next item with `space`.
3. Then type `tab`, selected items color change to `red` background to indicate action changed to `remove`. Then type `space` to continuously remove folder from project list.

## GoInto action / GoBack action

1. Start `enhanced-project-folder:add` or `enhanced-project-folder:search` from command palette or from keymap.
2. Type `right` key on item you want to go into.
3. List updated to show selected item's child directory.
4. Type `left` key on any items.
5. List updated to show parent directory.dire

##  Replace action.

1. Start `enhanced-project-folder:add` or `enhanced-project-folder:search` from command palette or from keymap.
2. Add multiple folder by typing `space` several times.
3. Then type `ctrl-r` on item you want to replace.
4. Project folders you added on 2. was replaced with only item you just replaced.

# Keymap

By default, keymap set on only mini enhanced-project-folder's mini editor scope.  
This keymap is effective only while select list is shown.

```coffeescript
'.enhanced-project-folder atom-text-editor[mini]':
  'ctrl-r': 'enhanced-project-folder:replace'
  'tab':    'enhanced-project-folder:switch-action'
  'space':  'enhanced-project-folder:confirm-and-continue'
  'right':  'enhanced-project-folder:go-into'
  'left' :  'enhanced-project-folder:go-back'
```

To start `enhanced-project-folder:add` or `enhanced-project-folder:remove`, invoke from command pallete, or set keymap by yourself.

e.g. My setting.

```coffeescript
'atom-workspace:not([mini])':
  'ctrl-alt-p': 'enhanced-project-folder:add'
```

# Config

**For Example:**

* `projectDefaultDirectories`: Comma separated list of directories to search project directories.

e.g
`~/.atom/packages, ~/github`

If you want to directly edit `config.cson`, see blow.

```coffeescript
"enhanced-project-folder":
  projectDefaultDirectories: [
    "~/.atom/packages"
    "~/github"
  ]
```
