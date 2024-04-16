Rails.application.routes.draw do

get("/", { :controller => "dice", :action => "show" })
get("/dice/:param_one/:param_two", { :controller => "dice", :action => "roll" })

end
