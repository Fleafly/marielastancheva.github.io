#encoding: utf-8
require 'yaml'
templ=IO.read('templ.html')
bgText = YAML.load_file('bg_hash.yml')
enText = YAML.load_file('en_hash.yml')
templ2=templ%enText
templ1=templ%bgText
IO.write("testfilebg.html", templ1) 
IO.write("testfileen.html", templ2)