# frozen_string_literal: true

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

def h5(**tags, &block)
  create_element('h5', tags, tag_helper(block))
end

def h6(**tags, &block)
  create_element('h6', tags, tag_helper(block))
end

def P(**tags, &block)
  create_element('p', tags, tag_helper(block))
end

def Q(**tags, &block)
  create_element('q', tags, tag_helper(block))
end

def A(**tags, &block)
  create_element('a', tags, tag_helper(block))
end

def B(**tags, &block)
  create_element('b', tags, tag_helper(block))
end

def body(**tags, &block)
  create_element('body', tags, tag_helper(block))
end

def br
  create_element('br')
end

def canvas(**tags, &block)
  create_element('canvas', tags, tag_helper(block))
end

def caption(**tags, &block)
  create_element('caption', tags, tag_helper(block))
end

def cite(**tags, &block)
  create_element('cite', tags, tag_helper(block))
end

def code(**tags, &block)
  create_element('code', tags, tag_helper(block))
end

def col(**tags, &block)
  create_element('col', tags, tag_helper(block))
end

def del(**tags, &block)
  create_element('del', tags, tag_helper(block))
end

def div(**tags, &block)
  create_element('div', tags, tag_helper(block))
end

def embed(**tags, &block)
  create_element('embed', tags, tag_helper(block))
end

def footer(**tags, &block)
  create_element('footer', tags, tag_helper(block))
end

def form(**tags, &block)
  create_element('form', tags, tag_helper(block))
end

def header(**tags, &block)
  create_element('header', tags, tag_helper(block))
end

def I(**tags, &block)
  create_element('i', tags, tag_helper(block))
end

def img(**tags, &block)
  create_element('img', tags, tag_helper(block))
end

def input(**tags, &block)
  create_element('input', tags, tag_helper(block))
end

def link(**tags, &block)
  create_element('link', tags, tag_helper(block))
end

def meta(**tags, &block)
  create_element('meta', tags, tag_helper(block))
end

def button(**tags, &block)
  create_element('button', tags, tag_helper(block))
end
