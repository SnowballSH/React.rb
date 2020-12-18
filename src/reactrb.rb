# frozen_string_literal: true

require 'ruby2js'

HtmlBlock = Struct.new(:name, :tags, :texts) do
  def to_s
    l = tags.map { |k, v| "#{k}: #{v}" }.join(',')
    q = texts.map(&:to_s).join(',')
    %(e(#{name},{#{l}},#{q}))
  end
end

def create_element(name, tags = {}, body = [])
  HtmlBlock.new(name.inspect, tags, body)
end

def create_direct(name, tags = {}, body = [])
  HtmlBlock.new(name, tags, body)
end

def tag_helper(block)
  texts = block.call
  texts = [texts] unless texts.is_a?(Array)
  texts
end

def h1(**tags, &block)
  create_element('h1', tags, tag_helper(block))
end

def h2(**tags, &block)
  create_element('h2', tags, tag_helper(block))
end

def h3(**tags, &block)
  create_element('h3', tags, tag_helper(block))
end

def h4(**tags, &block)
  create_element('h4', tags, tag_helper(block))
end

def P(**tags, &block)
  create_element('p', tags, tag_helper(block))
end

def div(**tags, &block)
  create_element('div', tags, tag_helper(block))
end

def button(**tags, &block)
  create_element('button', tags, tag_helper(block))
end

def ruby(code)
  Ruby2JS.convert(code).to_s
end

def str(string)
  "\"#{string}\""
end

def tempstr(string)
  "`#{string}`"
end

def arrow(code)
  "()=>(#{code})"
end

def func(code)
  "function (){#{code}}"
end

def css(file)
  "<link rel=\"stylesheet\" href=\"#{file}\">"
end

def create_function(name, body, head: '')
  "function #{name}(props){#{head};return #{body}}"
end

def render_react(bodies, entry: 'main', head: '', css: [])
  css = [css] unless css.is_a?(Array)
  %(<!DOCTYPE html><html><head><script src="https://unpkg.com/react@17/umd/react.development.js" crossorigin></script><script src="https://unpkg.com/react-dom@17/umd/react-dom.development.js" crossorigin></script><script>#{head}</script>#{css.join}</head><body><div id="root"></div><script>
'use strict';const e=React.createElement;const {useState}=React;#{bodies.join(';')};ReactDOM.render(React.createElement(#{entry}, null, null), document.getElementById('root'));</script></body></html>)
end
