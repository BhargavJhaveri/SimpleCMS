class DemoController < ApplicationController
  def index
  	render('index')
  end
  
  def hello
  	# render('hello')
  	@array = [1,2,3,4,5]
  	@id = params[:id].to_i
  	@age= params[:age].to_i
  end

  def other_hello
  	redirect_to(:action => 'index')
  end

  def lynda
  	redirect_to('http://lynda.com')
  end
end
