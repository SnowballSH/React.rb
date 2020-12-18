# frozen_string_literal: true

require_relative '../src/reactrb'

# A Component
x = div(className: str('mainDiv')) do
  [
    h2 do
      str 'A clicking game!'
      # Literal String
    end,

    P do
      ruby("'[REPEAT THIS 2^2 times] '.repeat(2 ** 2)")
      # Notice that 2 ** 2 is impossible in JavaScript,
      # So it is translated to Math.pow(2, 2)
    end,

    button(
      onClick: arrow(ruby('setClicks clicks + 1'))
      # Whe clicked, plus 1
    ) do
      str 'Click me!'
    end,

    P do
      tempstr 'You clicked ${clicks} times!'
      # Template string
    end
  ]
end

# Set the state using Ruby
x_head = ruby(%(
State0 = useState(0)
clicks, setClicks = State0
))

# Create the function
x = create_function('counter', x, head: x_head)

y = create_direct('counter')
y = create_function('main', y)

roboto = 'https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap'
File.write('test.html', render_react([x, y], css: [css('./test.css'), css(roboto)]))
