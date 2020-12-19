# PureReact.rb
Yet another React port in Ruby

## Create React apps with pure Ruby!
#### Now you can make beautiful UIs without learning JavaScript

To install:
```
gem install purereact.rb
```
or in Gemfile:
```
gem 'purereact.rb', '~> 0.0.2'
```

### Example:

```ruby
require 'reactrb'

x = div(className: str('mainDiv')) do
  [
    h1 {str 'This is h1'},
    button(
      onClick: arrow(ruby('alert "You clicked me!"'))
      # Write ruby code calling JavaScript functions
    ) do
      str 'Click me!'
    end
  ]
end

render_react([create_function('main', x)])
# Generates a String of Shortened Html Code and
# Can be opened using a browser directly.
```

### See the /test folder for a full example!
