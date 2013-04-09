def bl options={},&block
    options[:host]||='localost'
    options[:port]||=80
    p "text from function inner"
    yield(opts,tpl)
    p "text from function inner"
end

tmpl = <<-"DOC"
  text from tpl
  the #{x[:host]} and the #{x[:port]}
DOC

bl do |x,tmpl|
  p tmpl
end

#函数内部变量 block内变量 block 外变量

opts={host: "www.qq.com",port: 80}
bl opts do |x,tmpl|
  p tmpl
end
